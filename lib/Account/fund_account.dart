import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/error_payment.dart';
import 'package:smartpunch/Account/success_payment.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/login/text_input.dart';
import 'package:flutter_paystack_client/flutter_paystack_client.dart';

class FundAccount extends StatefulWidget {
  const FundAccount({Key? key}) : super(key: key);

  @override
  State<FundAccount> createState() => _FundAccountState();
}

class _FundAccountState extends State<FundAccount> {
  final TextEditingController amountController = TextEditingController();

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: Image.asset('images/wallet.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  'How much would you like to add to your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF0D60D8),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: MyTextInput(
                    hintText: 'Enter Amount',
                    controller: amountController,
                    keyboardType: TextInputType.number),
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
                        'Proceed',
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
      ),
    );
  }
}
