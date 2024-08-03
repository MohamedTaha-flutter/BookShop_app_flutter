import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles/text_styel.dart';
import '../../../../../core/widget/custom_button.dart';

class RatingBookItem extends StatelessWidget {
  const RatingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "4.8",
          style: AppFontStyles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(250)',
          style: AppFontStyles.textStyle16
              .copyWith(color: const Color(0xff707070)),
        ),

      ],
    );
  }
}
