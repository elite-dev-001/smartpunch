import 'package:flutter/material.dart';
import 'package:smartpunch/HomePage/home.dart';
import 'package:smartpunch/login/reg.dart';
import 'package:smartpunch/login/text_input.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TextFormField formField = TextFormField(
    //   initialValue: '',
    //   decoration: const InputDecoration(border: InputBorder.none),
    // );

    TextEditingController numberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff1fd527)
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Image.asset('images/logo.png')
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text('LOGIN', style: TextStyle(
                              fontSize: 25.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1fd527)
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: MyTextInput(hintText: 'Phone Number',controller: numberController,keyboardType: TextInputType.phone,)
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: MyTextInput(hintText: 'Password',controller: passwordController,keyboardType: TextInputType.visiblePassword,)
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: const Duration(milliseconds: 600),
                                    child: const Home()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xff1fd527),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.0),
                                  child: Text('Login', textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Don\'t have an account? '),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        duration: const Duration(milliseconds: 800),
                                        child: const Register()));
                                  },
                                  child: const Text('Register', style: TextStyle(
                                    color: Color(0xff1fd527),
                                    fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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
