import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiapp/core/routes/page_route_names.dart';
import 'package:islamiapp/core/themes/styles.dart';
import 'package:islamiapp/features/OnBoarding/onboading_data/onboarding_data.dart';
import '../../../core/gen/assets.gen.dart';
class OnBoardingScreen extends StatefulWidget {

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  late TextTheme textTheme = Theme.of(context).textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.quraanHeader.image(width: 291, height: 171),
          ),
          Expanded(
            child: IntroductionScreen(
              pages: OnboardingData.listPageViewModel,
              showDoneButton: true,
              done: const Text("Done"),
              onDone: () {
                Navigator.pushReplacementNamed(context, PageRouteNames.layoutScreen);
              },
              showNextButton: true,
              next: const Text("Next"),
              showBackButton: true,
              back: const Text("Back"),
              doneStyle:Styles.buttonStyle,
              backStyle: Styles.buttonStyle,
              nextStyle: Styles.buttonStyle,
              curve: Curves.bounceInOut,
              dotsDecorator: Styles.dotsDecorator,
            ),
          ),
        ],
      ),
    );
  }
}
