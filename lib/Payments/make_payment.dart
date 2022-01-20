import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/success_payment.dart';
import 'package:smartpunch/login/text_input.dart';
import 'package:intl/intl.dart';


class MakePayment extends StatelessWidget {
  const MakePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController()..text =
        'ASDF12426882-0015278';
    TextEditingController serviceController = TextEditingController()..text =
        'Enugu Electricity Distribution Company';
    TextEditingController packageController = TextEditingController()..text =
        'Prepaid';
    TextEditingController customerController = TextEditingController()..text =
        '010116046605';
    TextEditingController amountController = TextEditingController();


    currency(context) {
      // Locale locale = Localizations.localeOf(context);
      var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
      return format;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Payments'),
        backgroundColor: const Color(0xFF0D60D8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: (){
                  showAlertDialog(context);
                },
                icon: const Icon(Icons.delete_forever)
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text('Device ID'),
                ),
                MyTextInput(
                    hintText: 'hintText',
                    controller: controller,
                    keyboardType: TextInputType.none,
                    readOnly: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    child: Text('Service provider'),
                  ),
                  MyTextInput(
                    hintText: 'hintText',
                    controller: serviceController,
                    keyboardType: TextInputType.none,
                    readOnly: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    child: Text('Package'),
                  ),
                  MyTextInput(
                    hintText: 'hintText',
                    controller: packageController,
                    keyboardType: TextInputType.none,
                    readOnly: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    child: Text('Customer ID'),
                  ),
                  MyTextInput(
                    hintText: 'hintText',
                    controller: customerController,
                    keyboardType: TextInputType.none,
                    readOnly: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Amount'),
                        Text('Balance: ${currency(context).currencySymbol} 15,972.06')
                      ],
                    ),
                  ),
                  MyTextInput(
                    hintText: 'N0.00',
                    controller: amountController,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      child: const SuccessPayment()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF0D60D8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Make Payments', textAlign: TextAlign.center,
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

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: const Text("OK", style: TextStyle(
        color: Colors.green
    ),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget cancelButton = TextButton(
    child: const Text("Cancel", style: TextStyle(
        color: Colors.red
    ),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Remove Registered Device"),
    content: const Text("This will remove the registered device permanently."
        " Are you sure you want to continue?"),
    actions: [
      cancelButton,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
