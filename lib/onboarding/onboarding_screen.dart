import 'package:byta/login/signup_screen.dart';
import 'package:flutter/material.dart';

import '../text_styling/custom_text_getter.dart';


class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/onboard/onboard_1.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Welcome to ",
              context: context,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
            SizedBox(
              height: 28,
              child: Image.asset('assets/byta_logo/byta_small_logo.png'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomText(
            text: "Securely send money for approved purchases through our platform to your children.",
            context: context,
            fontWeight: FontWeight.w400,
            fontSize: 20.99,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/onboard/onboard_2.png'),
        CustomText(text: "Track your child's spending!", context: context, fontWeight: FontWeight.w700, fontSize: 30,textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
          CustomText(text: "Stay informed about your child's purchases with Byta's transaction history and notifications.",
              context: context, fontWeight: FontWeight.w400, fontSize: 20.99, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/onboard/onboard_3.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
            CustomText(text: "Start spending with Byta today!",
              context: context, fontWeight: FontWeight.w700, fontSize: 30, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child:
            CustomText(text: "Sign up now and experience the convenience of indirect money transfers for your child's essential needs.",
              context: context, fontWeight: FontWeight.w400, fontSize: 20.99, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 15),
          child: FilledButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE0AC94),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(100, 50),
            ),
            onPressed: () {
               Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SignUpPage(),
                ),
              );
              
            },
            child: CustomText(text: "Get Started", context: context, fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
