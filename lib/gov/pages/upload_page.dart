import 'package:codewars2/data/energy_list.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/utils/core.dart';
import 'package:codewars2/utils/size_config.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker_web/image_picker_web.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  Uint8List? fileBytes;
  String? fileName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    SizeConfig.init(context);
    var selectedEnergyType = <String, dynamic>{};

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
        child: Column(
          children: [
            Text('Upload a satellite image of a city to see the energy consumption', style: theme.textTheme.headline2
                ?.copyWith(
              fontWeight: FontWeight.w700,
              color: bgColor,
            ),),
            const Gap(30),
            InkWell(
              onTap: () async {
                final result = await FilePicker.platform.pickFiles();

                if (result != null) {
                  setState(() {
                    fileBytes = result.files.first.bytes;
                    fileName = result.files.first.name;
                  });
                  // Upload file
                  //await FirebaseStorage.instance.ref('uploads/$fileName').putData(fileBytes);
                }
                //final fromPicker = await ImagePickerWeb.getImageAsWidget();

                //var bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
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
            const Gap(20),
            if (fileName != null) Text(fileName!) else const SizedBox(),

            const Gap(20),
            Text('Which type of energy image are you uploading?',
              style: theme.textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: energyList.map<Widget>((e) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedEnergyType = e;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: selectedEnergyType['name'] == e['name'] ? buttonColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: bgColor, width: 2),
                    ),
                    child: Text(e['name'] as String,
                      style: const TextStyle(fontWeight: FontWeight.bold),),
                  ),
                );
              }).toList(),
            ),

            const Gap(40),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20, horizontal: 20,),
                ),
                child: Text('Proceed',
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600,
                  ),),
              ),
            ),

            const Gap(40),
            Container(
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
                      const Gap(30),
                      Expanded(
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                    ],
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
