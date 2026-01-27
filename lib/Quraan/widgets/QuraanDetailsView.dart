import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Models/SuraData.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/themes/AppColors.dart';

class Quraandetailsview extends StatefulWidget {
  static const String routeName = "/quran_details";
  const Quraandetailsview({
    super.key,
  });

  @override
  State<Quraandetailsview> createState() => _QuraandetailsviewState();
}

class _QuraandetailsviewState extends State<Quraandetailsview> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    SuraData suraData = ModalRoute.of(context)?.settings.arguments as SuraData;
    if (verses.isEmpty) loadDataFromAssets(suraData.suraNumber);
    return Scaffold(
      appBar: AppBar(
        title: Text(suraData.englishSuraName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(),
                    Assets.images.imgRightCorner.image(),
                  ],
                ),
                Assets.images.imgBottomDecoration.image()
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    suraData.arabicSuraName,
                    style: textTheme.headlineSmall
                        ?.copyWith(color: AppColors.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Padding(
                      padding:  const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: verses.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                "{${index + 1}} ${verses[index]}",
                                style: textTheme.bodyLarge?.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                                textAlign: TextAlign.center,
                              ),

                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  Future<void> loadDataFromAssets(String suraNumber) async {
    String quranText =
        await rootBundle.loadString("assets/files/quraan/$suraNumber.txt");
print(quranText);
    setState(() {
      verses = quranText.split("\n");
    });
  }
}
