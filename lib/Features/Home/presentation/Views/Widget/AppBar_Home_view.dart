import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class AppbarSplashView extends StatelessWidget {
  const AppbarSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         const Image(
          image: AssetImage(ImageApp.logoImage) ,
          height: 100,
          width: 100,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }
}
