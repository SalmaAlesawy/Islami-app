import 'package:flutter/material.dart';
import 'package:islamiapp/Layout/LayoutView.dart';

import '../OnBoarding/onboarding_screen.dart';
import '../core/gen/assets.gen.dart';
///native
///widget
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName="/splash";

  @override
  State<SplashView> createState() => _SplashViewState();

}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, OnBoarding.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Assets.images.splashScreenBackground.image(),
    );
  }
}
