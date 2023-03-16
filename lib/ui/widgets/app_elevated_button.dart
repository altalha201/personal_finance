import 'package:flutter/material.dart';

import '../utils/application_assets.dart';
import '../utils/text_styles.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key, required this.buttonText, required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 25),
            backgroundColor: AppColor.colorBlack
        ),
        child: Text(buttonText, style: buttonTextStyle,),
      ),
    );
  }
}
