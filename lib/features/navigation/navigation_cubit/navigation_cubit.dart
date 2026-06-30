import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/features/radio/radio_view/radio_view.dart';
import '../../../core/gen/assets.gen.dart';
import '../../Hadith/hadith_view/hadith_view.dart';
import '../../Quraan/quraan_view/quraan_view.dart';
import '../../Sebha/sebha_view/SebhaView.dart';
import '../../Time/TimeView.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitialState());
   int selectedIndex = 0;
   List<Widget> screens=[
    const Quraanview(),
    const Hadithview(),
    const SebhaView(),
    const RadioView(),
    const Timeview(),
  ];

   List<BottomNavigationBarItem> items=[
    BottomNavigationBarItem(
      icon: Assets.icons.quraanInActive.svg(),
      label: "Quran",
      activeIcon: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Assets.icons.quraanActive.svg()),
    ),
    BottomNavigationBarItem(
      icon: Assets.icons.hadithInActive.svg(),
      label: "Hadith",
      activeIcon: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Assets.icons.hadithActive.svg()),
    ),
    BottomNavigationBarItem(
      icon: Assets.icons.sebhaInActive.svg(),
      label: "Sebha",
      activeIcon: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Assets.icons.sebhaActive.svg()),
    ),
    BottomNavigationBarItem(
      icon: Assets.icons.radioInActive.svg(),
      label: "Radio",
      activeIcon: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Assets.icons.radioActive.svg()),
    ),
    BottomNavigationBarItem(
      icon: Assets.icons.timeInActive.svg(),
      label: "Time",
      activeIcon: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Assets.icons.timeActive.svg()),
    ),
  ];

  void setIndex(index) {
      selectedIndex=index;
      emit(NavigationSuccessState());
  }
}
