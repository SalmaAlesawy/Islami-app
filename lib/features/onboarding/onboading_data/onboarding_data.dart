import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/features/OnBoarding/onboarding_view/onboarding_pages.dart';

class OnboardingData {
 static List<PageViewModel> listPageViewModel = [
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

}