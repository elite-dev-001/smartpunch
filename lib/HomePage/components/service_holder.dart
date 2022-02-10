import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/HomePage/components/service.dart';
import 'package:smartpunch/HomePage/components/transaction.dart';
import 'package:smartpunch/Payments/reg_devices.dart';
import 'package:smartpunch/Services/feedback.dart';
import 'package:smartpunch/Services/new_device.dart';
// import 'package:smartpunch/Services/referral.dart';
import 'package:smartpunch/Services/service_providers.dart';

class ServiceHolder extends StatelessWidget {
  const ServiceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void providerList() {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: const Duration(milliseconds: 600),
              child: const NewDevice()));
    }

    void regDevice() {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.leftToRight,
              duration: const Duration(milliseconds: 600),
              child: const RegisteredDevices(fromDrawer: false,)));
    }

    void transact() {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.leftToRight,
              duration: const Duration(milliseconds: 600),
              child: const Transaction(fromDrawer: false,)));
    }

    void fund() {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: const Duration(milliseconds: 600),
              child: const FeedBack(fromDrawer: false,)));
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
                  icon: Icons.attach_money,
                  firstText: 'Buy Unit',
                  secondText: '',
                  lastText: 'Start Now',
                  myFunc: regDevice,
                ),
                Service(
                  color: 0xff89CFF0,
                  icon: Icons.electrical_services,
                  firstText: 'Add New Device',
                  secondText: '',
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
                  secondText: '',
                  lastText: 'Open',
                  myFunc: transact,
                ),
                Service(
                  color: 0xffFF1493,
                  icon: Icons.feedback,
                  firstText: 'Feedback',
                  secondText: '',
                  lastText: 'Visit',
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
