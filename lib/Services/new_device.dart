import 'package:flutter/material.dart';
import 'package:smartpunch/Services/dropdown.dart';
import 'package:smartpunch/login/text_input.dart';


class NewDevice extends StatelessWidget {
  const NewDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController deviceController = TextEditingController();
    TextEditingController numberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register a new Device'),
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
            const DropDown()
          ],
        ),
      ),
    );
  }
}
