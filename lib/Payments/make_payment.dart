import 'package:flutter/material.dart';
import 'package:flutter_paystack_client/flutter_paystack_client.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/error_payment.dart';
import 'package:smartpunch/Account/success_payment.dart';
import 'package:smartpunch/login/text_input.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({Key? key}) : super(key: key);

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  TextEditingController deviceController = TextEditingController()
    ..text = 'David Oyinkuro';
  TextEditingController controller = TextEditingController()
    ..text = 'ASDF12426882-0015278';
  TextEditingController serviceController = TextEditingController()
    ..text = 'Enugu Electricity Distribution Company';
  TextEditingController packageController = TextEditingController()
    ..text = 'Prepaid';
  TextEditingController customerController = TextEditingController()
    ..text = '010116046605';
  TextEditingController amountController = TextEditingController();

  var publicKey = 'pk_test_c8bd6ba27978f93fde84d7e44903dd65050853b9';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PaystackClient.initialize(publicKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Payments'),
        backgroundColor: const Color(0xFF0D60D8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                icon: const Icon(Icons.delete_forever)),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: Text('Device Name'),
                      ),
                      MyTextInput(
                        hintText: 'hintText',
                        controller: deviceController,
                        keyboardType: TextInputType.none,
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Amount'),
                        // Text('Balance: ${currency(context).currencySymbol} 15,972.06')
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
                onTap: () async {
                  final charge = Charge()
                    ..email = 'testemail@gmail.com'
                    ..amount = 10000
                    ..reference =
                        'ref_${DateTime.now().millisecondsSinceEpoch}';
                  final res =
                      await PaystackClient.checkout(context, charge: charge);
                  if (res.status) {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 600),
                            child: const SuccessPayment()));
                  } else {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 600),
                            child: const ErrorPayment()));
                  }
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
                      'Make Payments',
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

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: const Text(
      "OK",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget cancelButton = TextButton(
    child: const Text(
      "Cancel",
      style: TextStyle(color: Colors.red),
    ),
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
