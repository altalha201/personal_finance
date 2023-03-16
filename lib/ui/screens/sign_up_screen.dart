import 'package:flutter/material.dart';
import 'package:personal_finance/ui/utils/spacing.dart';
import 'package:personal_finance/ui/utils/text_styles.dart';
import 'package:personal_finance/ui/widgets/app_elevated_button.dart';
import 'package:personal_finance/ui/widgets/app_text_field.dart';
import 'package:personal_finance/ui/widgets/dual_text_widget.dart';
import 'package:personal_finance/ui/widgets/screen_background_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    Text("Create new account", style: titleStyle, textAlign: TextAlign.center,),
                    Spacing.verticalSpacing(32.0),
                    CircleAvatar(
                      radius: 50,
                    ),
                    Spacing.verticalSpacing(16.0),
                    AppTextField(hint: "Email", controller: TextEditingController()),
                    Spacing.verticalSpacing(8.0),
                    AppTextField(hint: "First Name", controller: TextEditingController()),
                    Spacing.verticalSpacing(8.0),
                    AppTextField(hint: "Last Name", controller: TextEditingController()),
                    Spacing.verticalSpacing(8.0),
                    AppTextField(hint: "Password", controller: TextEditingController(), obscureText: true,),
                    Spacing.verticalSpacing(16.0),
                    AppElevatedButton(
                      buttonText: "Create",
                      onPressed: () {

                      }
                    ),
                    Spacing.verticalSpacing(16.0),
                    DualTextWidget(
                      question: "Have an account?",
                      todo: "Login",
                      onTap: () {
                          Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
