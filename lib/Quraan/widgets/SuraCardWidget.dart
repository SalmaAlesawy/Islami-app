import 'package:flutter/material.dart';
import 'package:islamiapp/Models/SuraData.dart';

import '../../core/gen/assets.gen.dart';

class Suracardwidget extends StatelessWidget {
  const Suracardwidget({super.key, required this.suraData});
  final SuraData suraData;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Assets.images.imgSurNumberFrame.provider(),
                  fit: BoxFit.cover),
            ),
            child: Text(
              suraData.suraNumber,
              style: textTheme.titleLarge,
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            children: [
              Text(suraData.englishSuraName,style: textTheme.titleLarge,),
              Text(
                "${suraData.ayaNumber} Verses",
                style: textTheme.bodyMedium,
              ),
            ],
          ),
          const Spacer(),
           Text(suraData.arabicSuraName)
        ],
      ),
    );
  }
}
