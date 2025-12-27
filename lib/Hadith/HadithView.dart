import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class Hadithview extends StatelessWidget {
  const Hadithview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image:Assets.images.hadithBackground.provider()
        ,fit: BoxFit.cover
        )

      ),

    );
  }
}
