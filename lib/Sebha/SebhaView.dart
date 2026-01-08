import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.sebhaBackground.provider(),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Assets.images.quraanHeader.image(width: 350),
          ),
          Text(
            "سَبٍحِ اسْمَ رَبِِكَ الأعلى",
            style: textTheme.headlineMedium?.copyWith(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {

                setState(() {count++;});
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Assets.images.sebhaBody1.image(),
                  Column(
                    children: [
                      Text(
                        "سبحان الله",
                        style: textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "$count",
                        style: textTheme.headlineMedium,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
