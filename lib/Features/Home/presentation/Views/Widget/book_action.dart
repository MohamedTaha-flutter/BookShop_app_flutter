import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';


class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: '19.99\$',
              onPressed: () {},
            )),
        Expanded(
            child: CustomButton(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
              onPressed: () {},
            )),
      ],
    );
  }
}
