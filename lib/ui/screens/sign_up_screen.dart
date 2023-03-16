import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_finance/ui/utils/application_assets.dart';
import 'package:personal_finance/ui/utils/spacing.dart';
import 'package:personal_finance/ui/utils/text_styles.dart';
import 'package:personal_finance/ui/widgets/app_elevated_button.dart';
import 'package:personal_finance/ui/widgets/app_text_field.dart';
import 'package:personal_finance/ui/widgets/dual_text_widget.dart';
import 'package:personal_finance/ui/widgets/screen_background_widget.dart';

import '../widgets/photo_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  XFile? pickedImage;
  String? base64Image;

  Future<void> pickImage() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Pick Image From"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () async {
                    var navigator = Navigator.of(context);
                    pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
                    if (pickedImage != null) {
                      setState(() {});
                    }
                    navigator.pop();
                  },
                  leading: Icon(Icons.camera_alt_outlined, size: 34, color: AppColor.colorLiteBlack,),
                  title: const Text("Camera"),
                ),
                ListTile(
                  onTap: () async {
                    var navigator = Navigator.of(context);
                    pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
                    if (pickedImage != null) {
                      setState(() {});
                    }
                    navigator.pop();
                  },
                  leading: Icon(Icons.image_outlined, size: 34, color: AppColor.colorLiteBlack,),
                  title: const Text("Gallery"),
                ),
                Spacing.verticalSpacing(8.0),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel", style: authTextButton(AppColor.colorRed),)
                )
              ],
            ),
          );
        }
    );
  }

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
                    PhotoButton(
                      buttonSize: 50,
                      onTap: () => pickImage(),
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

