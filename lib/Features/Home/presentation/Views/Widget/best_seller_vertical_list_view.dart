import 'package:bookly_app/Features/Home/presentation/Views/Widget/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';


class BestSellerVerticalListView extends StatelessWidget {
  const BestSellerVerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 15,
    );
  }
}
