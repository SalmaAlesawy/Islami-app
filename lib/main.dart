import 'package:flutter/material.dart';
import 'package:islamiapp/Layout/LayoutView.dart';
import 'package:islamiapp/Quraan/widgets/QuraanDetailsView.dart';
import 'package:islamiapp/Splash/Splash_view.dart';
import 'package:islamiapp/core/themes/theme_Manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeManager.themeData,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        Quraandetailsview.routeName:(context)=>const Quraandetailsview(),
        LayoutView.routeName: (context)=>const LayoutView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
