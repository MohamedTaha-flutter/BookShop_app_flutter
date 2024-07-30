import 'package:bookly_app/Features/Splash/presentation/Views/Widget/SplashViewBody.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';



class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashViewBody(),
    );
  }
}
