import 'package:bookly_app/Features/Home/presentation/Views/Widget/custom_horizontal_List_view_Item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .30,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const CustomHorizontalListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(
            width: 5,
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
