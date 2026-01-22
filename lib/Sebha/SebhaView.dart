import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> Azkar = [
    "سبحان الله",
        "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
  ];
  int count = 0;
  void ReadAzkar(){
    if(count==30&& index<Azkar.length){
      index++;
      count=0;
      if(index==Azkar.length){
        index=0;
      }
    }
  }

  int index =0;
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Assets.images.quraanHeader.image(
              width: 291,
              height: 171,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: textTheme.headlineMedium,
            ),
            Expanded(
              child: InkWell(
                onTap: () {

                  count++;
                  ReadAzkar();
                  setState(() {});
                },
                child: Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Assets.images.sebhsbody.image(),
                    Container(
                      alignment: AlignmentGeometry.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Azkar[index],
                            style: textTheme.headlineMedium,
                          ),
                          Text(
                            count.toString(),
                            style: textTheme.headlineMedium,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

