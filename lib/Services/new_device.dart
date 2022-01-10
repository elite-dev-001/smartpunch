import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Services/device_success.dart';
import 'package:smartpunch/Services/dropdown.dart';
import 'package:smartpunch/Services/package.dart';
import 'package:smartpunch/login/text_input.dart';


class NewDevice extends StatelessWidget {
  const NewDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController deviceController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController meterController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register a new Device'),
        backgroundColor: const Color(0xff40196D),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyTextInput(
                  hintText: 'Enter Device ID',
                  controller: deviceController,
                  keyboardType: TextInputType.text
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: MyTextInput(
                  hintText: 'Enter Device Phone Number',
                  controller: numberController,
                  keyboardType: TextInputType.phone
              ),
            ),
            const DropDown(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: MyTextInput(
                  hintText: 'Customer ID (Meter Number)',
                  controller: meterController,
                  keyboardType: TextInputType.number
              ),
            ),
            const Package(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      child: const DeviceSuccess()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff40196D),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Register', textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}
