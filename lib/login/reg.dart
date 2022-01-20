import 'package:flutter/material.dart';
import 'package:smartpunch/login/login.dart';
import 'package:smartpunch/login/reg_success.dart';
import 'package:smartpunch/login/text_input.dart';
import 'package:page_transition/page_transition.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Image.asset('images/logo.png'),
                    width: MediaQuery.of(context).size.width * .70,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyTextInput(hintText: 'Full Name', controller: nameController, keyboardType: TextInputType.name),
                            MyTextInput(hintText: 'Phone Number', controller: numberController, keyboardType: TextInputType.phone),
                            MyTextInput(hintText: 'Email', controller: emailController, keyboardType: TextInputType.emailAddress),
                            MyTextInput(hintText: 'Address', controller: addressController, keyboardType: TextInputType.streetAddress),
                            MyTextInput(hintText: 'Password', controller: passwordController, keyboardType: TextInputType.visiblePassword),
                            MyTextInput(hintText: 'Confirm Password', controller: cPasswordController, keyboardType: TextInputType.visiblePassword),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF0D60D8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: const Duration(milliseconds: 600),
                                          child: const RegSuccess()));
                                    },
                                    child: const Text('Register', textAlign: TextAlign.center,
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
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Text('Already have an account? '),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, PageTransition(
                                          type: PageTransitionType.topToBottom,
                                          duration: const Duration(milliseconds: 800),
                                          child: const LoginScreen()));
                                    },
                                    child: const Text('Login', style: TextStyle(
                                        color: Color(0xFF0D60D8),
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
