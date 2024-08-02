import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomHorizontalListViewItem extends StatelessWidget {
  const CustomHorizontalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
  