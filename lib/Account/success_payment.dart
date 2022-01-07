import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/HomePage/home.dart';


class SuccessPayment extends StatefulWidget {
  const SuccessPayment({Key? key}) : super(key: key);

  @override
  State<SuccessPayment> createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {

  late Timer _timer;
  int _start = 3;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          dispose();
          Navigator.push(context, PageTransition(
              type: PageTransitionType.leftToRight,
              duration: const Duration(milliseconds: 600),
              child: const Home()));
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 1.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .2,
                        child: Image.asset('images/check2.png',),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text('Payment Successful', style: TextStyle(
                            color: Color(0xff1fd527),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(_start.toString(), style: const TextStyle(
                            color: Color(0xff1fd527),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),)
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
