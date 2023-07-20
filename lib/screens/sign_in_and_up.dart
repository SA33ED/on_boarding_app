import 'package:flutter/material.dart';
import 'package:onboarding/screens/sign_in.dart';
import 'package:onboarding/screens/sign_up.dart';
import 'package:onboarding/widgets/sign_btn.dart';

class SignInAndUp extends StatefulWidget {
  const SignInAndUp({super.key});
  static String id = "Sign";

  @override
  State<SignInAndUp> createState() => _SignInAndUpState();
}

class _SignInAndUpState extends State<SignInAndUp> {
  PageController? _controller;
  int currentIndex = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/sign_in_image.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SignBtn(
                page: 0,
                controller: _controller!,
                title: "Sign in",
                color: currentIndex == 0
                    ? const Color(0xff6D67E4)
                    : const Color(0xff9D9FA0),
                withBorder: currentIndex == 0 ? true : false,
              ),
              SignBtn(
                page: 1,
                controller: _controller!,
                title: "Sign up",
                color: currentIndex == 1
                    ? const Color(0xff6D67E4)
                    : const Color(0xff9D9FA0),
                withBorder: currentIndex == 1 ? true : false,
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: 2,
              itemBuilder: (_, i) {
                return ListView(
                  children: [
                    Column(
                      children: [
                        currentIndex == 0 ? const SignIn() : const SignUP(),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
