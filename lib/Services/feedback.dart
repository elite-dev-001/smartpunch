import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  final bool fromDrawer;
  const FeedBack({Key? key, required this.fromDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fromDrawer ? null : AppBar(
        title: const Text('Call Us'),
        backgroundColor: const Color(0xFF0D60D8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset('images/feedback.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Hi, let\'s help you today.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  'Phone lines are available between 8:00 AM'
                  ' and 5:00 PM on weekdays',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: Text(
                'Tap the number to call',
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 38.0),
              child: Text(
                '0123456789',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D60D8)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
