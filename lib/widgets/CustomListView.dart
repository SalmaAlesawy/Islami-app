import 'package:flutter/material.dart';

import '../core/gen/assets.gen.dart';
import '../core/themes/AppColors.dart';

class Customlistview extends StatefulWidget {
  Customlistview({super.key, required this.cardText});
  final String cardText;

  @override
  State<Customlistview> createState() => _CustomlistviewState();
}

class _CustomlistviewState extends State<Customlistview> {
  bool isSilent = false;
  bool isPlayed = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 141,
        child: Container(
            width: double.infinity,
            height: 141,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Positioned.fill(
                    top:isPlayed==false? 40: 70,
                    bottom: isPlayed==false? 0:-50,
                    child: isPlayed == false
                        ? Assets.images.imgBottomDecoration.image(
                            width: double.infinity,
                            fit: BoxFit.cover,
                            color: Colors.black26)
                        : Assets.images.soundWave.image(width: 517,
                        height: 97,
                        cacheHeight: 97,
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.fitHeight,
                        color: Colors.black26)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                     widget.cardText,
                      style: textTheme.bodyLarge
                          ?.copyWith(color: AppColors.scaffoldBackGroundColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isPlayed = !isPlayed;
                              });
                            },
                            icon: isPlayed == false
                                ? const Icon(
                                    Icons.play_arrow,
                                    size: 50,
                                    color: AppColors.scaffoldBackGroundColor,
                                  )
                                : const Icon(Icons.pause,
                                    size: 50,
                                    color: AppColors.scaffoldBackGroundColor)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSilent = !isSilent;
                              });
                            },
                            icon: isSilent == false
                                ? const Icon(
                                    Icons.volume_up,
                                    size: 50,
                                    color: AppColors.scaffoldBackGroundColor,
                                  )
                                : const Icon(Icons.volume_off_rounded,
                                    size: 50,
                                    color: AppColors.scaffoldBackGroundColor))
                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
