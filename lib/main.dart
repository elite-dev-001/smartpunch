import 'package:flutter/material.dart';
import 'package:flutter_paystack_client/flutter_paystack_client.dart';
import 'package:smartpunch/login/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    String paystackPublicKey = 'pk_test_c8bd6ba27978f93fde84d7e44903dd65050853b9';
    await PaystackClient.initialize(paystackPublicKey);

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