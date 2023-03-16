import 'package:flutter/material.dart';

import '../utils/application_assets.dart';
import '../utils/text_styles.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    Key? key, this.leftCurve, this.rightCurve, required this.text, required this.onPress,
  }) : super(key: key);

  final double? leftCurve;
  final double? rightCurve;
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(leftCurve ?? 0),
                bottomLeft: Radius.circular(leftCurve ?? 0),
                topRight: Radius.circular(rightCurve ?? 0),
                bottomRight: Radius.circular(rightCurve ?? 0)
            ),
          ),
          color: AppColor.colorBlack,
          elevation:5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(text, style: buttonTextStyle,),
            ),
          ),
        ),
      ),
    );
  }
}
