import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image:Assets.images.radioBackground.provider()
              ,fit: BoxFit.cover
          )

      ),

    );
  }
}