import 'package:flutter/material.dart';
import 'package:smartpunch/Onboarding/onboarding_page.dart';
import 'package:smartpunch/login/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


  main() {
    runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Splash screen Demo',
      home: const OnBoardingPage(),
      theme: ThemeData(
        primaryColor: const Color(0xff40196D)
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}