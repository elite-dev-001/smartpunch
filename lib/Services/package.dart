import 'package:flutter/material.dart';


class Package extends StatefulWidget {
  const Package({Key? key}) : super(key: key);

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {

  final packages = ['Prepaid', 'Postpaid'];

  // final items = ['items 1', 'items 2', 'items 3', 'items 4', 'items 5'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff40196D), width: 3),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              iconSize: 36,
              hint: const Text('Choose your Package'),
              icon: const Icon(Icons.arrow_drop_down,color: Color(0xff40196D),),
              items: packages.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() {
                this.value = value;
              }),
            ),
          )
      ),
    );

  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(item)
  );
}
