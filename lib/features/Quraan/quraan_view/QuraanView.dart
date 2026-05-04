import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/most_recent_cubit/most_recent_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/sura_details_cubit/sura_details_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/suras_cubit/sura_cubit.dart';

import '../../../core/themes/AppColors.dart';
import '../quraan_widgets/MostRecentlyCardWidget.dart';
import '../quraan_widgets/QuraanDetailsView.dart';
import '../quraan_widgets/SuraCardWidget.dart';

class Quraanview extends StatefulWidget {
  const Quraanview({super.key});

  @override
  State<Quraanview> createState() => _QuraanviewState();
}

class _QuraanviewState extends State<Quraanview> {
  @override
  void initState() {
    super.initState();
    context.read<SuraCubit>().getSuraList();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Assets.images.quraanBackground.provider(),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Assets.images.quraanHeader.image(
                  width: 299,
                  height: 141,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      hintText: "Sura Name",
                      hintStyle: textTheme.titleLarge,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Assets.icons.quraanActive.svg(
                            width: 24.5,
                            height: 28,
                            colorFilter: const ColorFilter.mode(
                                AppColors.primaryColor, BlendMode.srcIn)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    "Most Recently",
                    style: textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 150,
                  //Most Recent
                  child: BlocBuilder<MostRecentCubit, MostRecentState>(
                    builder: (context, state) {
                      switch (state) {
                        case MostRecentInitial():
                          return const Text("Initial");
                        case EmptyRecentState():
                          return const Text("choose Sura to add here");
                        case GetRecentState():
                          return ListView.separated(
                              physics: const ClampingScrollPhysics(),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Mostrecentlycardwidget(
                                    mostRecent: state.mostRecent[index],
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 20,
                                  ),
                              itemCount: state.mostRecent.length);
                      }
                    },
                  ),
                ),
                //Sura List
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Sura List",
                    style: textTheme.titleLarge,
                  ),
                ),
                BlocBuilder<SuraCubit, SuraState>(
                  builder: (context, state) {
                    switch (state) {
                      case SuraInitialState():
                        return const Text("Initial State");
                      case SuccessSuraState():
                        return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    context
                                        .read<MostRecentCubit>()
                                        .addRecent(state.suraList[index]);
                                    Navigator.push(
                                        (context),
                                        MaterialPageRoute(
                                            builder: (context) => BlocProvider(
                                                  create: (context) =>
                                                      SuraDetailsCubit(),
                                                  child: Quraandetailsview(
                                                      suraData: state
                                                          .suraList[index]),
                                                )));
                                  },
                                  child: Suracardwidget(
                                    suraData: state.suraList[index],
                                  ),
                                ),
                            separatorBuilder: (context, index) => const Divider(
                                  indent: 40,
                                  endIndent: 40,
                                ),
                            itemCount: state.suraList.length);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
