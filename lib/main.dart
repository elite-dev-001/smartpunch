import 'package:flutter/material.dart';
import 'package:smartpunch/login/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


  main() {
    runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: const LoginScreen(),
      duration: 5000,
      // imageSize: 130,
      imageSrc: "images/logo.png",
      text: "Smartpunch",
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 40.0,
        color: Colors.green,
        fontWeight: FontWeight.bold
      ),
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}