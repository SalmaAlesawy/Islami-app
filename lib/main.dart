import 'package:flutter/material.dart';
import 'package:islamiapp/core/routes/app_router.dart';
import 'package:islamiapp/core/routes/page_route_names.dart';
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
      initialRoute: PageRouteNames.splashScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
