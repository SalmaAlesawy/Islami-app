import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/api/dio_consumer.dart';
import 'package:islamiapp/features/hadith/hadith_cubit/hadith_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/most_recent_cubit/most_recent_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/suras_cubit/sura_cubit.dart';
import 'package:islamiapp/features/Sebha/sebha_cubit/sebha_cubit.dart';
import 'package:islamiapp/features/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:islamiapp/features/radio/radio_repository/radio_repo.dart';
import 'package:islamiapp/features/radio/radio_view_model/radio_cubit/radio_cubit.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => SuraCubit(),
        ),
        BlocProvider(
          create: (context) => MostRecentCubit(),
        ),
        BlocProvider(
          create: (context) => HadithCubit(),
        ),
        BlocProvider(
          create: (context) => SebhaCubit(),
        ),
        BlocProvider(
          create: (context) => RadioCubit(
            RadioRepo(
              dioConsumer: DioConsumer(
                dio: Dio(),
              ),
            ),
          )..getRadio(),
        )
      ],
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          final cubit = context.watch<NavigationCubit>();
          return Scaffold(
            body: cubit.screens[cubit.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
                showUnselectedLabels: false,
                currentIndex: cubit.selectedIndex,
                onTap: cubit.setIndex,
                items: cubit.items),
          );
        },
      ),
    );
  }
}
