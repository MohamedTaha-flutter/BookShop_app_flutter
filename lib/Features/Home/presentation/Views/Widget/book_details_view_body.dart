import 'package:bookly_app/Features/Home/presentation/Views/Widget/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/custom_horizontal_List_view_Item.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/rating_book%20item.dart';
import 'package:bookly_app/core/styles/text_styel.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.26),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 45,
        ),
        const Text(
          "The Jungle Book ",
          style: AppFontStyles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling ",
              style: AppFontStyles.textStyle24.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            )),
        const SizedBox(
          height: 18,
        ),
        const RatingBookItem(),
        const BookAction()
      ],
    );
  }
}

