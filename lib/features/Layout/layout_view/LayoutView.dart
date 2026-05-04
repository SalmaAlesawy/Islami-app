import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/features/Layout/layou_cubit/layout_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/most_recent_cubit/most_recent_cubit.dart';
import 'package:islamiapp/features/Quraan/quraan_cubits/suras_cubit/sura_cubit.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
        BlocProvider(
          create: (context) => SuraCubit(),
        ),
        BlocProvider(
          create: (context) => MostRecentCubit(),
        ),
      ],
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          final cubit = context.watch<LayoutCubit>();
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
