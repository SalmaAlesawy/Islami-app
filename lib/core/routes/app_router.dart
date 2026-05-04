import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/routes/page_route_names.dart';
import 'package:islamiapp/features/Layout/layout_view/LayoutView.dart';
import 'package:islamiapp/features/OnBoarding/onboarding_view/onboarding_screen.dart';
import 'package:islamiapp/features/Quraan/quraan_view/QuraanView.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/suras_cubit/sura_cubit.dart';
import 'package:islamiapp/features/Splash/Splash_view.dart';

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
          builder: (context) => const LayoutView(),
          settings: setting,
        );
      case PageRouteNames.quraanScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (_) => SuraCubit()..getSuraList(),
              child: const Quraanview()),
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
