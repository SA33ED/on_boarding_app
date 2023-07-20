import 'package:flutter/material.dart';
import 'package:onboarding/screens/homa_page.dart';
import 'package:onboarding/screens/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Onboarding.id: (context) => const Onboarding(),
        HomePage.id: (context) => const HomePage(),
      },
      initialRoute: Onboarding.id,
    );
  }
}
