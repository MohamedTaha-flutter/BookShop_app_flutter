import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_styel.dart';



class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    ImageApp.testImage,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      "Harry Potter and the Goblet ot Fire ",
                      maxLines: 2,
                      style: AppFontStyles.textStyle24,
                      overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "J K . Rowling ",
                  style: AppFontStyles.textStyle16,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 \$",
                      style: AppFontStyles.textStyle20.copyWith(fontSize: 22),
                    ),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                    ),
                    const SizedBox(width: 5,),
                    const Text("4.8",style: AppFontStyles.textStyle18,),
                    const SizedBox(width: 5,),
                    Text('(250)',style: AppFontStyles.textStyle16.copyWith(color: const Color(0xff707070)),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
