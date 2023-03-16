import 'package:flutter/material.dart';
import 'package:personal_finance/ui/screens/sign_up_screen.dart';
import 'package:personal_finance/ui/utils/application_assets.dart';
import 'package:personal_finance/ui/utils/spacing.dart';
import 'package:personal_finance/ui/utils/text_styles.dart';
import 'package:personal_finance/ui/widgets/app_text_field.dart';
import 'package:personal_finance/ui/widgets/dual_text_widget.dart';
import 'package:personal_finance/ui/widgets/screen_background_widget.dart';

import '../widgets/app_elevated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", width: 100,),
                  Spacing.verticalSpacing(42.0),
                  Text("Welcome", style: titleStyle,),
                  Text(AppLongStrings.loginSubtitle, style: subtitleStyle,),
                  Spacing.verticalSpacing(32.0),
                  AppTextField(hint: "Email", controller: TextEditingController(), leading: const Icon(Icons.alternate_email),),
                  Spacing.verticalSpacing(8.0),
                  AppTextField(hint: "Password", controller: TextEditingController(), obscureText: true, leading: const Icon(Icons.lock),),
                  Spacing.verticalSpacing(16.0),
                  AppElevatedButton(
                    buttonText: 'Login',
                    onPressed: () {

                    },
                  ),
                  Spacing.verticalSpacing(32.0),
                  DualTextWidget(
                    question: "Have no account?",
                    todo: "Sign Up",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
