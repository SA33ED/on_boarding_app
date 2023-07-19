import 'package:flutter/material.dart';

class OnBoardingModel {
  Image image;
  String title;
  String description;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoardingModel> onBoardnigContent = [
  OnBoardingModel(
    image: Image.asset("assets/images/onBoarding1.png"),
    title: "Welcome to BFCAI",
    description: "Your new friend in your Success journey",
  ),
  OnBoardingModel(
    image: Image.asset("assets/images/onBoarding2.png"),
    title: "Gain new skills",
    description:
        "Start gaining new skills with our professional courses and instractors",
  ),
  OnBoardingModel(
    image: Image.asset("assets/images/onBoarding3.png"),
    title: "Easy To Access",
    description:
        "Learn easily with cocoon, you can access many courses just click enroll",
  ),
];
