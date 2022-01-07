import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/fund_account.dart';


class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    currency(context) {
      // Locale locale = Localizations.localeOf(context);
      var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
      return format;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff1fd527).withOpacity(.9)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Account Balance', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${currency(context).currencySymbol} 15,972.06', style:
                    const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 600),
                                child: const FundAccount()));
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                            size: 30,
                          ),

                      ),
                      const Text('Fund Account', style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.09,
            ),
          ],
        ),
      ),
    );
  }
}
