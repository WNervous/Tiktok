import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';

class TextInputFiled extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData iconData;

  TextInputFiled(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: borderColor)),
            label: Text(labelText),
            prefixIcon: Icon(iconData),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: borderColor))));
  }
}
