import 'package:flutter/material.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.readOnly = false
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWrapper(
      borderColor: const Color(0xFF0D60D8),
      borderFocusedColor: const Color(0xFF0D60D8),
      formField: TextFormField(
        readOnly: readOnly,
        controller: controller,
        cursorColor: const Color(0xFF0D60D8),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusColor: const Color(0xFF0D60D8),
          hintText: hintText,
        ),
      ),
      position: TextFormFieldPosition.alone,
    );
  }
}

