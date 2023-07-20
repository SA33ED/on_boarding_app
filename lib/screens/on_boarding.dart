import 'package:flutter/material.dart';
import 'package:onboarding/models/on_boarding_model.dart';
import 'package:onboarding/screens/sign_in_and_up.dart';
import 'package:onboarding/widgets/back_btn.dart';
import 'package:onboarding/widgets/bulid_dods.dart';
import 'package:onboarding/widgets/next_btn.dart';
import 'package:onboarding/widgets/start_btn.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
  static String id = "Onboarding";
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: onBoardnigContent.length,
        itemBuilder: (_, i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SignInAndUp.id);
                      },
                      child: const Text("Skip"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Image.asset(onBoardnigContent[i].image, width: 300),
                    Text(onBoardnigContent[i].title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600)),
                    Text(onBoardnigContent[i].description,
                        style: const TextStyle(
                            color: Color(0xFF535353),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardnigContent.length,
                  (index) => buildDots(index, currentIndex),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentIndex == 0
                        ? Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Spacer(flex: 1),
                                NextBtn(controller: _controller!),
                              ],
                            ),
                          )
                        : currentIndex == onBoardnigContent.length - 1
                            ? const StartBtn()
                            : Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _controller!.previousPage(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            curve: Curves.bounceIn);
                                      },
                                      child: BackBtn(controller: _controller!),
                                    ),
                                    NextBtn(controller: _controller!),
                                  ],
                                ),
                              ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
