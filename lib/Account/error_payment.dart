import 'package:flutter/material.dart';


class ErrorPayment extends StatelessWidget {
  const ErrorPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Payment Error')
        ],
      ),
    );
  }
}