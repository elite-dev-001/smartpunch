import 'package:flutter/material.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

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
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.0,
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
                            child: TextFormFieldWrapper(
                              borderColor: const Color(0xff1fd527),
                              borderFocusedColor: const Color(0xff1fd527),
                              formField: TextFormField(
                                controller: numberController,
                                cursorColor: const Color(0xff1fd527),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusColor: Color(0xff1fd527),
                                  hintText: 'Phone Number',
                                ),
                              ),
                              position: TextFormFieldPosition.alone,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: TextFormFieldWrapper(
                              borderColor: const Color(0xff1fd527),
                              borderFocusedColor: const Color(0xff1fd527),
                              formField: TextFormField(
                                controller: passwordController,
                                cursorColor: const Color(0xff1fd527),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusColor: Color(0xff1fd527),
                                  hintText: 'Password',
                                ),
                              ),
                              position: TextFormFieldPosition.alone,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text('Don\'t have an account? '),
                                Text('Register', style: TextStyle(
                                  color: Color(0xff1fd527),
                                  fontWeight: FontWeight.bold
                                ),)
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
