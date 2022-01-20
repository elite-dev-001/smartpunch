
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/fund_account.dart';
import 'package:smartpunch/HomePage/components/service.dart';
import 'package:smartpunch/HomePage/components/transaction.dart';
import 'package:smartpunch/Payments/reg_devices.dart';
import 'package:smartpunch/Services/service_providers.dart';


class ServiceHolder extends StatelessWidget {
  const ServiceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void providerList() {
      Navigator.push(context, PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 600),
          child: const ServiceProviders()));
    }

    void regDevice() {
      Navigator.push(context, PageTransition(
          type: PageTransitionType.leftToRight,
          duration: const Duration(milliseconds: 600),
          child: const RegisteredDevices()));
    }

    void transact() {
      Navigator.push(context, PageTransition(
          type: PageTransitionType.leftToRight,
          duration: const Duration(milliseconds: 600),
          child: const Transaction()));
    }
    void fund() {
      Navigator.push(context, PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 600),
          child: const FundAccount()));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Service(
                  color: 0xff0000FF,
                  icon: Icons.how_to_reg_rounded,
                  firstText: 'Load Devices',
                  secondText: 'Check to see all your registered devices and also register'
                      ' as many as possible',
                  lastText: 'View Devices',
                  myFunc: regDevice,
                ),
                Service(
                  color: 0xff7F00FF,
                  icon: Icons.electrical_services,
                  firstText: 'Service Providers',
                  secondText: 'Check to see the list of available service providers '
                      'and their various packages',
                  lastText: 'Open',
                  myFunc: providerList,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Service(
                  color: 0xff00703c,
                  icon: Icons.skip_previous_outlined,
                  firstText: 'Recent Transactions',
                  secondText: 'Check all your past and recent transactions',
                  lastText: 'Open',
                  myFunc: transact,
                ),
                Service(
                  color: 0xffFF1493,
                  icon: Icons.money,
                  firstText: 'Fund Account',
                  secondText: 'Add money to your Smartpunch account to save and '
                      'pay bills',
                  lastText: 'Fund',
                  myFunc: fund,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
