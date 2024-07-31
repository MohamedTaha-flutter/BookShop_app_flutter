import 'package:bookly_app/Features/Home/presentation/Views/Widget/AppBar_Home_view.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/Featured_Books_ListView.dart';
import 'package:flutter/material.dart';

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
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
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

        ],
      ),
    );
  }
}

