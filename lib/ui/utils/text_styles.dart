import 'package:flutter/material.dart';

import 'application_assets.dart';

TextStyle menuWelcomeStyle = TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.w100, fontSize: 23);

TextStyle menuTitleStyle = TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.bold, fontSize: 16);

TextStyle homeTitleStyle = TextStyle(color: AppColor.colorBlack, fontWeight: FontWeight.w700, fontSize: 32);

TextStyle balanceTextStyle = TextStyle(color: AppColor.colorWhite, fontSize: 65);

TextStyle buttonTextStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.colorWhite);

TextStyle splashTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: AppColor.colorLiteBlack,
  decoration: TextDecoration.none,
);

TextStyle titleStyle = TextStyle(
  color: AppColor.colorDarkGray,
  fontSize: 42,
  fontWeight: FontWeight.w600
);

TextStyle subtitleStyle = TextStyle(
    color: AppColor.colorDarkGray,
    fontSize: 12,
    fontWeight: FontWeight.w100
);

TextStyle authTextButton(textColor) => TextStyle(
  color: textColor,
  fontSize: 13,
  fontWeight: FontWeight.w200,
);