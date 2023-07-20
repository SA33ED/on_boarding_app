  import 'package:flutter/material.dart';

Container buildDots(index,currentIndex) {
    return Container(
      width: index == currentIndex ? 20 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: index == currentIndex ? const Color(0xff6D67E4) : Colors.grey,
      ),
    );
  }

