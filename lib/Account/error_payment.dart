import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/HomePage/home.dart';


class ErrorPayment extends StatefulWidget {
  const ErrorPayment({Key? key}) : super(key: key);

  @override
  State<ErrorPayment> createState() => _ErrorPaymentState();
}

class _ErrorPaymentState extends State<ErrorPayment> {

  late Timer _timer;
  int _start = 3;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          Navigator.push(context, PageTransition(
              type: PageTransitionType.leftToRight,
              duration: const Duration(milliseconds: 600),
              child: const Home()));
          dispose();
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
                        child: Image.asset('images/error.png',),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Sorry, something went wrong. '
                            'Could not process your transaction',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(_start.toString(), style: const TextStyle(
                              color: Colors.red,
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
