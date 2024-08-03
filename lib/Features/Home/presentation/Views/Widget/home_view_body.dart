import 'package:bookly_app/Features/Home/presentation/Views/Widget/AppBar_Home_view.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/Featured_Books_ListView.dart';
import 'package:bookly_app/Features/Home/presentation/Views/Widget/best_seller_vertical_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/styles/text_styel.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
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
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerVerticalListView(),
        )
      ],
    );
  }
}

