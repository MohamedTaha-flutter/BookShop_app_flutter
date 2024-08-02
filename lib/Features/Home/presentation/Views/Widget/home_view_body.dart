import 'package:bookly_app/Features/Home/presentation/Views/Widget/AppBar_Home_view.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/Featured_Books_ListView.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/styles/text_styel.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            "Best Seller",
            style: AppFontStyles.textStyle20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

