import 'package:bookly_app/core/app_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'core/styles/color.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorApp.mainColor,
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light,
                statusBarColor: ColorApp.mainColor
              ))),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
