import 'package:flutter/material.dart';

import '../utils/application_assets.dart';

class PhotoButton extends StatelessWidget {
  const PhotoButton({
    Key? key, required this.buttonSize, required this.onTap,
  }) : super(key: key);

  final double buttonSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: buttonSize,
        backgroundColor: AppColor.colorDarkGray,
        child: CircleAvatar(
          radius: buttonSize - 2,
          backgroundColor: AppColor.colorWhite,
          child: Icon(Icons.image_outlined, size: buttonSize - 6,),
        ),
      ),
    );
  }
}