import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final serviceProviders = [
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
    {'image': 'images/providers/kedco.png', 'name': 'KEDCO'},
    {'image': 'images/providers/phcn.png', 'name': 'PHCN Postpaid (ALL ZONES)'},
    {'image': 'images/providers/phcn.png', 'name': 'PHCN Prepaid (EKO)'},
    {'image': 'images/phed.png', 'name': 'PHED Postpaid'},
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
    {'image': 'images/eko.jpeg', 'name': 'Eko Electrical Distribution Company'},
  ];

  final states = [
    'Abuja FCT',
    'Akwa Ibom',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Cross River',
    'Ekiti',
    'Gombe',
    'Jigawa',
    'Kaduna',
    'Kano',
    'Katsina',
    'Kebbi',
    'Kogi',
    'Kwara',
    'Lagos',
    'Nasarawa',
    'Niger',
    'Ogun',
    'Osun',
    'Oyo',
    'Plateau',
    'Rivers',
    'Sokoto',
    'Zamfara'
  ];

  // final items = ['items 1', 'items 2', 'items 3', 'items 4', 'items 5'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF0D60D8), width: 3),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              iconSize: 36,
              hint: const Text('Select a state'),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Color(0xFF0D60D8),
              ),
              items: states.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() {
                this.value = value;
              }),
            ),
          )),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: ListTile(
        // leading: CircleAvatar(backgroundImage: AssetImage(item['image'].toString()),),
        title: Text(item),
        // dense: true,
      ));
}
