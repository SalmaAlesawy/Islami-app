import 'package:flutter/material.dart';

import '../core/gen/assets.gen.dart';
///native
///widget
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Assets.images.splashScreenBackground.image(),
    );
  }
}
