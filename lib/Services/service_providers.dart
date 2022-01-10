import 'package:flutter/material.dart';


class ServiceProviders extends StatelessWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const serviceProviders = [
      {
        'image': 'images/providers/bedc.png',
        'name': 'Benin Electricity Distribution Company'
      },
      {
        'image': 'images/providers/eedc.jpeg',
        'name': 'Enugu Electrical Distribution Company'
      },
      {
        'image': 'images/providers/ibadan.jpeg',
        'name': 'Ibadan Electrical Distribution Company'
      },
      {
        'image': 'images/ikeja.png',
        'name': 'Ikeja Electrical Distribution Company'
      },
      {
        'image': 'images/providers/kedco.png',
        'name': 'KEDCO'
      },
      {
        'image': 'images/providers/phcn.png',
        'name': 'PHCN Postpaid (ALL ZONES)'
      },
      {
        'image': 'images/providers/phcn.png',
        'name': 'PHCN Prepaid (EKO)'
      },
      {
        'image': 'images/phed.png',
        'name': 'PHED Postpaid'
      },
      {
        'image': 'images/providers/yedc.jpeg',
        'name': 'Yola Electrical Distribution Company'
      },
      {
        'image': 'images/providers/jos.png',
        'name': 'Jos Electrical Distribution Company'
      },
      {
        'image': 'images/providers/kaduna.jpeg',
        'name': 'Kaduna Electrical Distribution Company'
      },
      {
        'image': 'images/eko.jpeg',
        'name': 'Eko Electrical Distribution Company'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Service Providers'),
        backgroundColor: const Color(0xff40196D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: serviceProviders.map((e) => ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(e['image'].toString()),),
            title: Text(e['name'].toString(), style: const TextStyle(
                color: Color(0xff40196D)
            ),),
            dense: true,
          )).toList(),
        ),
      ),
    );
  }
}
