import 'package:flutter/material.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

class OnboardingPages extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const OnboardingPages({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(
              image,
              width: 366.5412292480469,
              height: 338.80096435546875,
            ),
          ),
          Text(
            title,
            style: textTheme.headlineSmall?.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: textTheme.bodyLarge?.copyWith(color: AppColors.primaryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
