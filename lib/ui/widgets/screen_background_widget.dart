import 'package:flutter/material.dart';
import 'package:personal_finance/ui/utils/application_assets.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
    Key? key, required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColor.colorWhite, AppColor.colorLiteGray, AppColor.colorGray],
              stops: const [0.3, 0.7, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}