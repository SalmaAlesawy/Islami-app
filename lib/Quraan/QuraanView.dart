import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class Quraanview extends StatelessWidget {
  const Quraanview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image:Assets.images.quraanBackground.provider()
              ,fit: BoxFit.cover
          )

      ),

    );
  }
}
