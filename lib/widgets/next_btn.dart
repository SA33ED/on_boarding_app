// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NextBtn extends StatelessWidget {
  NextBtn({super.key, required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.nextPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.bounceIn);
      },
      child: Container(
        width: 125,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 16),
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
            Text(
              'Next',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
