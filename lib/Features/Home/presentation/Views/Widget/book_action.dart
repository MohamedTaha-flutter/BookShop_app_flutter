import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';


class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                backgroundColor: Colors.white,
                textColor: Colors.black,
                text: '19.99\$',
                onPressed: () {},
              )),
          Expanded(
              child: CustomButton(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                text: 'Free Preview',
                onPressed: () {},
                fontSize: 22,
              )),
        ],
      ),
    );
  }
}
