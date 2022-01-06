import 'package:flutter/material.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWrapper(
      borderColor: const Color(0xff1fd527),
      borderFocusedColor: const Color(0xff1fd527),
      formField: TextFormField(
        controller: controller,
        cursorColor: const Color(0xff1fd527),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusColor: const Color(0xff1fd527),
          hintText: hintText,
        ),
      ),
      position: TextFormFieldPosition.alone,
    );
  }
}

