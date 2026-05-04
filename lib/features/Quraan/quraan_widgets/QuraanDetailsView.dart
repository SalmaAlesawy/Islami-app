import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/Models/SuraDataModel.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/sura_details_cubit/sura_details_cubit.dart';

class Quraandetailsview extends StatefulWidget {
  const Quraandetailsview({
    super.key,
    required this.suraData,
  });
  final SuraDataModel suraData;

  @override
  State<Quraandetailsview> createState() => _QuraandetailsviewState();
}

class _QuraandetailsviewState extends State<Quraandetailsview> {
  @override
  void initState() {
    super.initState();
    context
        .read<SuraDetailsCubit>()
        .loadDataFromAssets(widget.suraData.suraNumber);
  }
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.suraData.englishSuraName),
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
                    widget.suraData.arabicSuraName,
                    style: textTheme.headlineSmall
                        ?.copyWith(color: AppColors.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: BlocBuilder<SuraDetailsCubit, SuraDetailsState>(
                      builder: (context, state) {
                        switch (state) {
                          case SuraDetailsInitialState():
                            return const Text("Initial");
                          case SuraDetailsLoadingState():
                            return const CircularProgressIndicator();
                          case SuraDetailsSuccessState():
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ListView.builder(
                                itemCount: state.verses.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Text(
                                        "{${index + 1}} ${state.verses[index]}",
                                        style: textTheme.bodyLarge?.copyWith(
                                          color: AppColors.primaryColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                        }
                      },
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
}
