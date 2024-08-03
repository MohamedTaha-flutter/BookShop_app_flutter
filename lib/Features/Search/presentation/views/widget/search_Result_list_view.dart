import 'package:flutter/material.dart';

import '../../../../Home/presentation/Views/Widget/best_sellar_list_view_item.dart';


class SearchResultVerticalListView extends StatelessWidget {
  const SearchResultVerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 15,
    );
  }
}
