import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'Features/Splash/presentation/Views/Splash_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

