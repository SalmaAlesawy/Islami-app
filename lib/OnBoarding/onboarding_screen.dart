import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart' show IntroductionScreen, PageViewModel, DotsDecorator;
import 'package:islamiapp/Layout/LayoutView.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import '../core/gen/assets.gen.dart';
import 'onboarding_pages.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = "/onboarding";

  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageController = PageController();
  late TextTheme textTheme = Theme.of(context).textTheme;
  List<PageViewModel> listPageViewModel = [
    PageViewModel(
        title: "",
        bodyWidget: Builder(
            builder: (context) => OnboardingPages(
                  title: "",
                  description: "Welcome To Islmi App",
                  image: Assets.images.welcome.keyName,
                ))),
    PageViewModel(
      title: "",
      bodyWidget: Builder(
          builder: (context) => OnboardingPages(
                title: "Welcome To Islami",
                description: "We Are Very Excited To Have You In Our Community",
                image: Assets.images.kaapa.keyName,
              )),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Builder(
          builder: (context) => OnboardingPages(
                title: "Reading the Quran",
                description: "Read, and your Lord is the Most Generous",
                image: Assets.images.readingQuraan.keyName,
              )),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Builder(
          builder: (context) => OnboardingPages(
                title: "Bearish",
                description: "Praise the name of your Lord, the Most High",
                image: Assets.images.bearish.keyName,
              )),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Builder(
          builder: (context) => OnboardingPages(
                title: "Holy Quran Radio",
                description:
                    "You can listen to the Holy Quran Radio through the application for free and easily",
                image: Assets.images.listenRadio.keyName,
              )),
    ),
  ];

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
              pages: listPageViewModel,
              showDoneButton: true,
              done: const Text("Done"),
              onDone: () {
                Navigator.pushReplacementNamed(context, LayoutView.routeName);
              },
              showNextButton: true,
              next: const Text("Next"),
              showBackButton: true,
              back: const Text("Back"),
              doneStyle: const ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  foregroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor)),
              backStyle: const ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  enableFeedback: false,
                  shadowColor: WidgetStatePropertyAll(Colors.transparent),
                  foregroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor)),
              nextStyle: const ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  enableFeedback: false,
                  shadowColor: WidgetStatePropertyAll(Colors.transparent),
                  foregroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor))

              ,
              curve: Curves.bounceInOut,
              dotsDecorator: DotsDecorator(

                size: const Size.square(10),
                  activeSize: const Size(20, 10),
                  activeColor: AppColors.primaryColor,
                  color: Colors.black26,
                  spacing: const EdgeInsets.symmetric(horizontal: 3),
                 shapes: List.filled(5, const RoundedRectangleBorder(side: BorderSide.none)),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)),


                  shape: const CircleBorder(side: BorderSide(color: AppColors.primaryColor))),
            ),
          ),
        ],
      ),
    );
  }
}
