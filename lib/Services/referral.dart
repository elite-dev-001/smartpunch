import 'package:flutter/material.dart';

class Referral extends StatelessWidget {
  const Referral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Invite Friends',
      //     textAlign: TextAlign.center,
      //   ),
      //   backgroundColor: const Color(0xFF0D60D8),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              child: Image.asset('images/referral.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Invite a friend and get N200 when they sign up, with your '
                'referral code, add their Device and a valid Service Provider, and '
                'fund at least N1000 in their SmartPunch account',
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.50),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                // border: Border.all(),
                color: const Color(0xFF0D60D8).withOpacity(.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0),
                              child: Text('Number of Sign-Ups'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '6',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0),
                              child: Text('Referral Amount Earned'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'N1200',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'See all your invites >',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF0D60D8)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('COPY CODE'),
                      Icon(Icons.copy),
                      Text('FEMWDFPD')
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Share Code',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    decoration: const BoxDecoration(color: Color(0xFF0D60D8)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
