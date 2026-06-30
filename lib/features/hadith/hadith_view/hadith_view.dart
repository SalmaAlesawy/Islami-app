import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/features/hadith/hadith_cubit/hadith_cubit.dart';

import 'hadith_details.dart';

class Hadithview extends StatefulWidget {
  const Hadithview({super.key});

  @override
  State<Hadithview> createState() => _HadithviewState();
}

class _HadithviewState extends State<Hadithview> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      context.read<HadithCubit>().loadDataFromAssets();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.hadithBackground.provider(),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Image(
              image: Assets.images.quraanHeader.provider(),
              width: 350,
            ),
          ),
          BlocBuilder<HadithCubit, HadithState>(
            builder: (context, state) {
              switch (state) {
                case HadithInitialState():
                  return const Text("Hadith Initial State");
                case HadithLoadingState():
                  return const CircularProgressIndicator();
                case HadithSuccessState():
                  return CarouselSlider(
                      items: state.hadithDate
                          .map((e) => Hadithdetails(
                                hadithData: e,
                              ))
                          .toList(),
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.6,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: false,
                        reverse: false,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ));
              }
            },
          )
        ],
      ),
    );
  }
}
