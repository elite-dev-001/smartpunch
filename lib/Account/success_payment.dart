import 'package:flutter/material.dart';


class SuccessPayment extends StatelessWidget {
  const SuccessPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Payment Successful')
        ],
      ),
    );
  }
}
