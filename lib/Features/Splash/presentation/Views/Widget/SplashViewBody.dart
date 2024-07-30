import 'package:bookly_app/Features/Splash/presentation/Views/Widget/AppBar_Splash_view.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          AppbarSplashView()
        ],
      ),
    );
  }
}
