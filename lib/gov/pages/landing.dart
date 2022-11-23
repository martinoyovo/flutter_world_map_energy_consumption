import 'package:codewars2/gov/pages/widgets/login_alert.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/utils/core.dart';
import 'package:codewars2/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    SizeConfig.init(context);


    return Material(
      color: bgColor,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //01194A
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', width: 150, height: 150,),

                  Gap(getProportionateScreenHeight(40)),

                  Text(l10n.govAppTitle, style: theme.textTheme.headline1
                      ?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: getProportionateScreenHeight(50),
                  ),),

                  Gap(getProportionateScreenHeight(30)),

                  Text(l10n.govAppDescription, style: theme.textTheme.headline3
                      ?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: buttonColor,
                  ),),

                  Gap(getProportionateScreenHeight(60)),

                  ElevatedButton(
                    onPressed: () {
                      showDialog(context: context, builder: (_) {
                        return const Center(child: LoginAlert());
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.9),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20,),
                      shape: const StadiumBorder(),
                    ),
                    child: Text(l10n.govAppLogin,
                      style: theme.textTheme.titleLarge
                        ?.copyWith(color: bgColor, fontWeight: FontWeight.w600,
                      ),),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Lottie.asset(
              'assets/images/world_lottie.json',
              width: getProportionateScreenWidth(150),
              height: getProportionateScreenWidth(150),
              fit: BoxFit.cover,
            ),
          ),
          Gap(getProportionateScreenWidth(70))
        ],
      ),
    );
  }
}
