import 'package:flutter/material.dart';
import 'package:islamiapp/core/routes/page_route_names.dart';
import '../../core/gen/assets.gen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();

}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, PageRouteNames.onBoardingScreen);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Assets.images.splashScreenBackground.image(),
    );
  }
}
