import 'package:flutter/material.dart';
import 'package:islamiapp/core/routes/page_route_names.dart';
import 'package:islamiapp/features/OnBoarding/onboarding_view/onboarding_screen.dart';
import 'package:islamiapp/features/Splash/Splash_view.dart';
import 'package:islamiapp/features/navigation/navigation_view/navigation_view.dart';

abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case PageRouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: setting,
        );
      case PageRouteNames.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
          settings: setting,
        );
      case PageRouteNames.layoutScreen:
        return MaterialPageRoute(
          builder: (context) => const NavigationView(),
          settings: setting,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: setting,
        );
    }
  }
}
