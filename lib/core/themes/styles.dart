import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

class Styles {
 static ButtonStyle buttonStyle = const ButtonStyle(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor));
 static DotsDecorator dotsDecorator = DotsDecorator(
     size: const Size.square(10),
     activeSize: const Size(20, 10),
     activeColor: AppColors.primaryColor,
     color: Colors.black26,
     spacing: const EdgeInsets.symmetric(horizontal: 3),
     shapes:
     List.filled(5, const RoundedRectangleBorder(side: BorderSide.none)),
     activeShape: RoundedRectangleBorder(
         borderRadius: BorderRadiusGeometry.circular(25)),
     shape:
     const CircleBorder(side: BorderSide(color: AppColors.primaryColor)));
}