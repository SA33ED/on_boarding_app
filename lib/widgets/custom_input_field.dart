// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  String hintText;
  Icon prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
        style: const TextStyle(
          color: Color(0xff9D9FA0),
        ),
      ),
    );
  }
}
