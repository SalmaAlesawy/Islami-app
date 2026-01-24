import 'package:flutter/material.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

class OnboardingPages extends StatelessWidget {
  final  String title;
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

    return
       SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset(
               image,
               width: 388,
               height: 415,
             ),
             const SizedBox(
               height: 20,
             ),
             Text(
               title,
               style: textTheme.headlineSmall?.copyWith(
                 color: AppColors.primaryColor,
               ),
             ),
             const SizedBox(
               height: 30,
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
