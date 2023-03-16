import 'package:flutter/material.dart';
import 'package:personal_finance/ui/screens/splash_screen.dart';

void main() {
  runApp(const PersonalFinanceApp());
}

class PersonalFinanceApp extends StatelessWidget {
  const PersonalFinanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Personal Finance',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
