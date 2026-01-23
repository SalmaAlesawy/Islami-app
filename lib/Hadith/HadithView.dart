import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadith/HadithDetails.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

import '../Models/Hadith_data.dart';

class Hadithview extends StatefulWidget {
  const Hadithview({super.key});

  @override
  State<Hadithview> createState() => _HadithviewState();
}

class _HadithviewState extends State<Hadithview> {
  @override
  Widget build(BuildContext context) {
    if (Hadith.isEmpty) loadDataFromAssets();
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image:Assets.images.hadithBackground.provider()
        ,fit: BoxFit.cover
        )

      ),
      child:
      Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(32),
           child: Image(image: Assets.images.quraanHeader.provider(),width: 350,),
         ),
          CarouselSlider(items: Hadith.map((e)=> Hadithdetails(hadithData: e,)).toList(), options:CarouselOptions(
            height: MediaQuery.of(context).size.height*0.6,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            reverse: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ) )


        ],
      ),

    );
  }
  List<HadithData> Hadith = [];

  Future<void> loadDataFromAssets() async {
    for (int i = 1; i <= 50; i++) {
      String HadithText =
      await rootBundle.loadString("assets/files/Hadeeth/h$i.txt");
      int titleLength = HadithText.trim().indexOf("\n");
      String hadithTitle = HadithText.substring(0, titleLength);
      String hadithBody = HadithText.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        hadithText: hadithBody,
        hadithTitle: hadithTitle,
      );
      Hadith.add(hadithData);
      setState(() {
      });

    }


  }

}
