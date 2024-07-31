import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'Features/Splash/presentation/Views/Splash_View.dart';
import 'core/styles/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorApp.mainColor,
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light))),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
