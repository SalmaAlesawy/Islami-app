import 'package:flutter/material.dart';
import 'package:islamiapp/Models/SuraDataModel.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import '../../../core/gen/assets.gen.dart';

class Mostrecentlycardwidget extends StatelessWidget {
  const Mostrecentlycardwidget({super.key, required this.mostRecent});
  final SuraDataModel mostRecent;

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
                 mostRecent.englishSuraName,
                  style: textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(mostRecent.arabicSuraName,
                    style: textTheme.titleLarge?.copyWith(
                      color: Colors.black,
                    )),
                Text("Number of ayas: ${mostRecent.ayaNumber}",
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
