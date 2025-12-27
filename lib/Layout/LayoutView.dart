import 'package:flutter/material.dart';
import 'package:islamiapp/Hadith/HadithView.dart';
import 'package:islamiapp/Quraan/QuraanView.dart';
import 'package:islamiapp/Radio/RedioView.dart';
import 'package:islamiapp/Sebha/SebhaView.dart';
import 'package:islamiapp/Time/TimeView.dart';

import '../core/gen/assets.gen.dart';

class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screens=[
    const Quraanview(),
    const Hadithview(),
    const SebhaView(),
    const RadioView(),
    const Timeview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFE2BE7F),
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
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
          ]),
    );
  }
}
