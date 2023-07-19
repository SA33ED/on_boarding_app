import 'package:flutter/material.dart';
import 'package:onboarding/models/on_boarding_model.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onBoardnigContent.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              onBoardnigContent[i].image,
              Text(onBoardnigContent[i].title),
              Text(onBoardnigContent[i].description),
            ],
          );
        },
      ),
    );
  }
}
