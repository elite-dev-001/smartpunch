import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Payments/make_payment.dart';


class RegisteredDevices extends StatelessWidget {
  const RegisteredDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const registeredDevices = [
      {
        'name': 'Jos Electrical Distribution Company',
        'image': 'images/providers/jos.png',
        'meterID': 'Meter ID: 14202476900',
      },
      {
        'name': 'Enugu Electrical Distribution Company',
        'image': 'images/providers/eedc.jpeg',
        'meterID': 'Meter ID: 010116046605',
      },
      {
        'name': 'KEDCO',
        'image': 'images/providers/kedco.png',
        'meterID': 'Meter ID: 010117014615',
      },
      {
        'name': 'Yola Electrical Distribution Company',
        'image': 'images/providers/yedc.jpeg',
        'meterID': 'Meter ID: 22132445533',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registered Devices'),
        backgroundColor: const Color(0xff40196D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: registeredDevices.map((e) => ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(e['image'].toString()),),
            title: Text(e['name'].toString()),
            subtitle: Text(e['meterID'].toString(), style: const TextStyle(
                color: Color(0xff40196D),
                fontWeight: FontWeight.bold
            ),),
            trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff40196D)
            ),
            onTap: (){
              Navigator.push(context, PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                  child: const MakePayment()));
            },
            dense: true,
          )).toList(),
        ),
      ),
    );
  }
}
