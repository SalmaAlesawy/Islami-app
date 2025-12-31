import 'package:flutter/material.dart';
import 'package:islamiapp/Layout/LayoutView.dart';
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
      home:  const LayoutView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

