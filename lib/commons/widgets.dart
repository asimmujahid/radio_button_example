import 'package:flutter/material.dart';

class Text_Field_page extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labeltext;
  const Text_Field_page({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labeltext,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hintText,
        labelText: labeltext,
      ),
    );
  }
}
