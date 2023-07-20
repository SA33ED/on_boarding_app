import 'package:flutter/material.dart';
import 'package:onboarding/screens/home_page.dart';
import 'package:onboarding/screens/on_boarding.dart';
import 'package:onboarding/screens/sign_in_and_up.dart';

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
        SignInAndUp.id: (context) => const SignInAndUp(),
      },
      initialRoute: Onboarding.id,
    );
  }
}
