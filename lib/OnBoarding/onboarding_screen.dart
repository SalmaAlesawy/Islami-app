import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiapp/Layout/LayoutView.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import '../core/gen/assets.gen.dart';
import 'onboarding_pages.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = "/onboarding";
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;
  int _pageIndex = 0;
  List<Widget> pages = [];
  List<PageViewModel> listPageViewModel = [
    PageViewModel(
        useScrollView: false,
        title: "",
        bodyWidget: OnboardingPages(
            title: "",
            image: Assets.images.welcome.keyName,
            description: "Welcome To Islami App")),
    PageViewModel(
        title: "",
        bodyWidget: OnboardingPages(
            title: "Welcome To Islami",
            image: Assets.images.kaapa.keyName,
            description: "We Are Very Excited To Have You In Our Community")),
    PageViewModel(
        title: "",
        bodyWidget: OnboardingPages(
            title: "Reading the Quran",
            image: Assets.images.readingQuraan.keyName,
            description: "Read, and your Lord is the Most Generous")),
    PageViewModel(
        title: "",
        bodyWidget: OnboardingPages(
            title: "Bearish",
            image: Assets.images.bearish.keyName,
            description: "Praise the name of your Lord, the Most High")),
    PageViewModel(
        title: "",
        bodyWidget: OnboardingPages(
            title: "Holy Quran Radio",
            image: Assets.images.listenRadio.keyName,
            description:
                "You can listen to the Holy Quran Radio through the application for free and easily"))
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Assets.images.quraanHeader.image(),
            ),
            SizedBox(
              height: 600,
              child: IntroductionScreen(
                pages: listPageViewModel,
                animationDuration: 1,
                curve: Curves.easeInOutCubic,
                freeze: false,
                showNextButton: true,
                next: const Text("Next"),
                nextStyle: const ButtonStyle(
                  foregroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor),
                ),
                showBackButton: true,
                back: const Text("Back"),
                backStyle: const ButtonStyle(
                    foregroundColor:
                        WidgetStatePropertyAll(AppColors.primaryColor)),
                done: const Text("Done"),
                doneStyle: const ButtonStyle(
                    foregroundColor:
                        WidgetStatePropertyAll(AppColors.primaryColor)),
                onDone: () {
                  Navigator.pushReplacementNamed(context, LayoutView.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
