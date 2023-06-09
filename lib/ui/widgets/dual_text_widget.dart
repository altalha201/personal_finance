import 'package:flutter/material.dart';

import '../utils/application_assets.dart';
import '../utils/spacing.dart';
import '../utils/text_styles.dart';

class DualTextWidget extends StatelessWidget {

  final String question;
  final String todo;
  final VoidCallback? onTap;

  const DualTextWidget({
    Key? key,
    required this.question,
    required this.todo,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question,
            style: authTextButton(AppColor.colorDarkGray),
          ),
          Spacing.horizontalSpacing(4.0),
          Text(
            todo,
            style: authTextButton(AppColor.colorBlack),
          ),
        ],
      ),
    );
  }
}
