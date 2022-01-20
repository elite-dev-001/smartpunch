import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/login/login.dart';


class RegSuccess extends StatelessWidget {
  const RegSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
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
                          child: Text('Registration Successful', style: TextStyle(
                              color: Color(0xFF0D60D8),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: const Duration(milliseconds: 600),
                                  child: const LoginScreen()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xFF0D60D8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text('Proceed to Login', textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
