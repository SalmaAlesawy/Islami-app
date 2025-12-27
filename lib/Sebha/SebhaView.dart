import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image:Assets.images.sebhaBackground.provider()
              ,fit: BoxFit.cover
          )

      ),

    );
  }
}
