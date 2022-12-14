import 'package:codewars2/gov/pages/upload_page.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/utils/core.dart';
import 'package:codewars2/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginAlert extends StatefulWidget {
  const LoginAlert({Key? key}) : super(key: key);

  @override
  State<LoginAlert> createState() => _LoginAlertState();
}

class _LoginAlertState extends State<LoginAlert> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    SizeConfig.init(context);
    final theme = Theme.of(context);


    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: getProportionateScreenWidth(150),
        width: getProportionateScreenWidth(150),
        child: Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30,),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: bgColor
                  ),
                    child: Center(child: Text(l10n.login.toUpperCase(), style:
                    theme.textTheme.headline4?.copyWith(color: Colors.white,
                        fontWeight: FontWeight.bold,),),),
                ),
                const Gap(40),
                _textField(
                    hint: l10n.email,
                    controller: emailController,
                ),
                const Gap(40),
                _textField(
                    hint: l10n.password,
                    controller: passwordController,
                    isPassword: true,
                ),
                const Spacer(),
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
                    child: Text(l10n.next,
                      style: theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600,
                      ),),
                  ),
                ),
                const Gap(20)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField({
    required String hint,
    required TextEditingController controller,
    bool? isPassword,}) {

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        suffix: isPassword == true ? InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(
              obscureText == true
                  ? Icons.visibility
                  : Icons.visibility_off,
          ),
        ) : const SizedBox(),
      ),
      obscureText: obscureText,
    );
  }
}
