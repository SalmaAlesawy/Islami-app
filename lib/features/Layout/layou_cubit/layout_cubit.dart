import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../../core/gen/assets.gen.dart';
import '../../Hadith/HadithView.dart';
import '../../Quraan/quraan_view/QuraanView.dart';
import '../../Radio/RedioView.dart';
import '../../Sebha/SebhaView.dart';
import '../../Time/TimeView.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitialState());
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
      emit(ScreenSuccessState());
  }
}
