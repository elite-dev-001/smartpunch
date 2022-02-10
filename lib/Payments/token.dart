import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Payments/token_success.dart';

class Token extends StatelessWidget {
  const Token({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              'Token generated successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF0D60D8)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                child: Image.asset('images/success.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Your Generated Token is:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF0D60D8),
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                    child: const Text(
                      '72102751892469102591',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1.5),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 600),
                          child: const TokenSuccess()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF0D60D8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Send Token to SmartPunch',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
