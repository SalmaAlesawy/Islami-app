import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/features/Sebha/sebha_cubit/sebha_cubit.dart';

import '../sebha_data/sebha_text.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double rotation = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Assets.images.sebhaBackground.provider(),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Assets.images.quraanHeader.image(
              width: 291,
              height: 171,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              SebhaText.sebhaTitle,
              style: textTheme.headlineMedium,
            ),
            BlocBuilder<SebhaCubit, SebhaState>(
              builder: (context, state) {
                switch (state) {
                  case SebhaSuccessState():
                    return Expanded(
                      child: InkWell(
                        onTap: () {
                          state.count++;
                          context.read<SebhaCubit>().readAzkar();
                          rotation += 15 / 360;
                          index = state.index;
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              RotationTransition(
                                  turns: AlwaysStoppedAnimation(rotation),
                                  child: Assets.images.sebhaBody1.image(
                                      width: 378.9999694824219,
                                      height: 460.0002746582031)),
                              Positioned(
                                bottom: 190,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      state.sebhaText,
                                      style: textTheme.headlineMedium,
                                    ),
                                    Text(
                                      state.count.toString(),
                                      style: textTheme.headlineMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
