import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Payments/make_payment.dart';
import 'package:smartpunch/Services/new_device.dart';

class RegisteredDevices extends StatelessWidget {
  final bool fromDrawer;
  const RegisteredDevices({Key? key, required this.fromDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const registeredDevices = [
      {
        'name': 'Kuro Jeremiah',
        'image': 'images/providers/jos.png',
        'meterID': 'Meter ID: 14202476900',
      },
      {
        'name': 'Bobby Zagha',
        'image': 'images/providers/eedc.jpeg',
        'meterID': 'Meter ID: 010116046605',
      },
      {
        'name': 'David Oyinkuro',
        'image': 'images/providers/kedco.png',
        'meterID': 'Meter ID: 010117014615',
      },
      {
        'name': 'Anthony Umusike',
        'image': 'images/providers/yedc.jpeg',
        'meterID': 'Meter ID: 22132445533',
      },
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0D60D8),
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: const Duration(milliseconds: 600),
                  child: const NewDevice()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: fromDrawer ?null : AppBar(
        title: const Text('My Devices'),
        backgroundColor: const Color(0xFF0D60D8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: registeredDevices
              .map((e) => ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.account_circle_sharp),
                    ),
                    title: Text(e['name'].toString()),
                    subtitle: Text(
                      e['meterID'].toString(),
                      style: const TextStyle(
                          color: Color(0xFF0D60D8),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        color: Color(0xFF0D60D8)),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: const Duration(milliseconds: 600),
                              child: const MakePayment()));
                    },
                    // dense: true,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
