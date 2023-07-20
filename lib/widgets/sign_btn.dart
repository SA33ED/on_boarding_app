// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SignBtn extends StatelessWidget {
  SignBtn({
    super.key,
    required this.title,
    required this.color,
    required this.withBorder,
    required this.controller,
    required this.page,
  });
  bool withBorder;
  String title;
  int page;
  Color color;
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.jumpToPage(page);
      },
      child: Container(
        alignment: Alignment.center,
        width: 164,
        decoration: withBorder == true
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: color, width: 5),
                ),
              )
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
