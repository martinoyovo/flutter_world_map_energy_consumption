import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/utils/core.dart';
import 'package:codewars2/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    SizeConfig.init(context);

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(l10n.uploadCity, style: theme.textTheme.headline2
                      ?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: bgColor,
                  ),),
                  const Gap(30),
                  Container(
                    width: getProportionateScreenWidth(150),
                    height: getProportionateScreenWidth(100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300, width: 10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.upload_file, size: 100,),
                        const Gap(20),
                        Text(l10n.uploadText, style: theme.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context, MaterialPageRoute<dynamic>(
                          builder: (_) => const UploadPage(),),);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: bgColor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20,),
                      ),
                      child: Text(l10n.uploadProceed,
                        style: theme.textTheme.titleLarge
                            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600,
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30,),
                      image: DecorationImage(
                        image: AssetImage
                      )
                    ),
                  )*/
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
