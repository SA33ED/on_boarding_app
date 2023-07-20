import 'package:flutter/material.dart';
import 'package:onboarding/widgets/custom_input_field.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 10,
        ),
        CustomInputField(
          hintText: "Name",
          prefixIcon: const Icon(Icons.account_circle_outlined),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomInputField(
          hintText: "E-mail",
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomInputField(
          hintText: "Phone Number",
          prefixIcon: const Icon(Icons.phone_outlined),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomInputField(
          hintText: "Password",
          prefixIcon: const Icon(Icons.lock_outline),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "forget password?",
                style: TextStyle(color: Color(0xffB5B7B8)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 343,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
          decoration: ShapeDecoration(
            color: const Color(0xFF6D67E4),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign UP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
