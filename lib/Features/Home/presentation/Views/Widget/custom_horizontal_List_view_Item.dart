import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push('/bookDetailsView') ;
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(color: Colors.redAccent,
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                image: AssetImage(
                  ImageApp.testImage,
                ),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
  