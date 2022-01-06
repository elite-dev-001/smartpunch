import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2)
          ),
          child: TextFormField()
      ),
    );
  }
}
