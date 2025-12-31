import 'package:flutter/material.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

import '../../core/gen/assets.gen.dart';

class Mostrecentlycardwidget extends StatelessWidget {
  const Mostrecentlycardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Al-Anbiya",
                  style: textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text("الأنبياء",
                    style: textTheme.titleLarge?.copyWith(
                      color: Colors.black,
                    )),
                Text("112 Verses ",
                    style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ))
              ],
            ),
            Expanded(
              child: Image(
                image: Assets.images.imgMostRecent.provider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
