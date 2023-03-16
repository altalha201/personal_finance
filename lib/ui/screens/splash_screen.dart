import 'package:flutter/material.dart';
import 'package:personal_finance/ui/screens/home_screen.dart';
import 'package:personal_finance/ui/screens/login_screen.dart';
import 'package:personal_finance/ui/utils/application_assets.dart';
import 'package:personal_finance/ui/utils/spacing.dart';
import 'package:personal_finance/ui/utils/text_styles.dart';
import 'package:personal_finance/ui/widgets/screen_background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenBackground(
        child: Stack(
          children: [
            SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLongStrings.splashTitle,
                    style: splashTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Spacing.verticalSpacing(screenSize.height * 0.1),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: screenSize.width * 0.3,
              ),
            ),

          ],
        )
    );
  }
}
