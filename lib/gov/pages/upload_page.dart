import 'dart:math';

import 'package:codewars2/data/energy_list.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/models/*.dart';
import 'package:codewars2/utils/core.dart';
import 'package:codewars2/utils/size_config.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/input_output.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final enegAvg = 1208;

  final List<String> whentheenergysuperior1300 = [
    "Adjust your day-to-day behaviors",
    "Replace your light bulbs",
    "Use smart power strips",
    "No new gas supply contracts",
    "Replace Nation's supplies with gas from alternative sources"
  ];

  final List<String> whentheenergysuperior1500 = [
    "No new gas supply contracts",
    "Replace Nation's supplies with gas from alternative sources",
    "Accelerate the deployment of new wind and solar projects ",
    "Accelerate energy efficiency improvements in buildings and industry",
    "Use energy efficient appliances",
    "Install a programmable thermostat"
  ];

  Uint8List? fileBytes;
  String? fileName;
  bool isProcessing = false;
  bool showResult = false;
  Model processedCity = data.first;
  final _random = Random();
  int pageIndex = 0;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    SizeConfig.init(context);
    var selectedEnergyType = <String, dynamic>{};

    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          children: [
            Center(
              child: Text(
                'Upload a satellite image of a city to see the energy consumption',
                style: theme.textTheme.headline2
                  ?.copyWith(
                fontWeight: FontWeight.w700,
                color: bgColor,
              ),),
            ),
            const Gap(30),
            Center(
              child: InkWell(
                onTap: () async {
                  setState(() {
                    showResult = false;
                  });
                  final result = await FilePicker.platform.pickFiles();

                  if (result != null) {
                    setState(() {
                      fileBytes = result.files.first.bytes;
                      fileName = result.files.first.name;
                    });
                  }
                },
                child: Container(
                  width: getProportionateScreenWidth(150),
                  height: getProportionateScreenWidth(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.shade300, width: 10),
                  ),
                  child: fileBytes != null ? Image.memory(fileBytes!,
                    fit: BoxFit.cover,) : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload_file, size: 100,),
                      const Gap(20),
                      Text('Upload city satellite image', style: theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            const Gap(20),
            if (fileName != null) Center(child: Text(fileName!)) else const SizedBox(),

            const Gap(20),
            Center(
              child: Text('What\'s the population of the city?',
                style: theme.textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(10),
            Center(
              child: SizedBox(
                width: 400,
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: "Enter population",
                  ),
                ),
              ),
            ),

            const Gap(40),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isProcessing = true;
                    });
                    if(fileBytes != null) {
                      final image = await FirebaseStorage.instance.ref().child('logos').child('/$fileName').putData(fileBytes!);
                      await image.ref.getDownloadURL().then((link) async {
                        print("uploaded link $link");

                        setState(() {
                          showResult = true;
                          isProcessing = false;
                        });
                      }).catchError((e) {
                        setState(() {
                          showResult = false;
                          processedCity = (data.toList()..shuffle()).first;
                          isProcessing = false;
                        });
                        debugPrint('Upload error.');
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bgColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 20,),
                  ),
                  child: isProcessing == true ?
                  const Center(child: CircularProgressIndicator(
                    color: Colors.white,),) : Text('Proceed',
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600,
                    ),),
                ),
              ),
            ),

            const Gap(40),
            if (showResult != true) const SizedBox() else Center(
              child: Container(
                width: getProportionateScreenWidth(200),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade300, width: 4),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                pageIndex = 0;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: bgColor, width: 2),
                              ),
                              child: const Center(
                                child: Text('Observations',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                              ),
                            ),
                          ),
                        ),
                        const Gap(30),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: bgColor, width: 2),
                              ),
                              child: const Center(
                                child: Text('Suggestions',
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: pageIndex == 0 ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Image.asset("assets/cities/${processedCity.name.toLowerCase()}.png", width: 100,),
                          const Gap(30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(30),
                              Row(
                                children: [
                                  const Text(
                                    'Population : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Text(
                                    _controller.text,
                                    style: const TextStyle(
                                      color: Color(0xFF3DD1FF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Total energy consumption per capita : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    '${Random().nextInt(100000).toStringAsFixed(2)} units',
                                    style: const TextStyle(
                                        color: Color(0xFF3DD1FF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 27),
                                  ),
                                ],
                              ),
                              const Gap(10),
                            ],
                          ),
                        ],
                      ) : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          processedCity.energy < enegAvg
                              ? const SizedBox()
                              : processedCity.energy > enegAvg &&
                              processedCity.energy < 1500
                              ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: whentheenergysuperior1300
                                .map<Widget>((item) {
                              return Container(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Wrap(
                                  children: [
                                    const CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.orangeAccent,
                                    ),
                                    const Gap(20),
                                    Text(
                                      item,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          )
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: whentheenergysuperior1300
                                .map<Widget>((item) {
                              return Container(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Wrap(
                                  children: [
                                    const CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.orangeAccent,
                                    ),
                                    const Gap(20),
                                    Text(
                                      item,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      )
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
