import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smartpunch/login/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';



class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget example1 = SplashScreenView(
    navigateRoute: const LoginScreen(),
    duration: 8000,
    imageSize: 130,
    imageSrc: "images/logo.png",
    text: "Your number 1 Automated Electricity Solutions",
    textType: TextType.TyperAnimatedText,
    textStyle: const TextStyle(
        fontSize: 18.0,
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold
    ),
    backgroundColor: Colors.white,
  );

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => example1),
    );
  }



  Widget _buildImage(String assetName, [double width = 450]) {
    return Image.asset('images/$assetName', width: width,);
  }

  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0, color: Color(0xFF000000));

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF000000)
      ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.only(bottom: 40.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      bodyAlignment: Alignment.center,
      imageAlignment: Alignment.bottomCenter,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Enjoy a Pleasant Service",
          body: "Control your electricty bill payments from the comfort of your home"
              " school or work place with just our mobile app and our Smart Punch "
              "device  ",
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.center,
            imageAlignment: Alignment.center,
          ),
          image: _buildImage('ob1.png'),
        ),
        PageViewModel(
          title: "Integrated Payment Platform",
          body: "Create an account, fund your account, and make seamless integrated "
              "electricity bill payments. ",
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.center,
            imageAlignment: Alignment.center,
          ),
          image: _buildImage('ob2.png'),
        ),
        PageViewModel(
          title: "Robot Punch",
          body: "Generated token after successful payment is sent in an encoded"
              " format to the robot, who decodes it"
              " for a SMART PUNCH implementation",
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.center,
            imageAlignment: Alignment.center,
          ),
          image: _buildImage('ob3.png'),
        ),
        PageViewModel(
          title: "Successful Activation",
          body: "Now sit back, relax and enjoy a steady power supply",
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.center,
            imageAlignment: Alignment.center,
          ),
          image: _buildImage('ob4.png'),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFF000000),
        activeColor: Color(0xFF0D60D8),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}



