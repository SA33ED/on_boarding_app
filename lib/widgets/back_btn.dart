// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
   BackBtn({super.key,required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.previousPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.bounceIn);
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xFF6D67E4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
