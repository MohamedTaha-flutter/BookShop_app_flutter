import 'package:bookly_app/Features/Search/presentation/views/widget/search_Result_list_view.dart';
import 'package:bookly_app/Features/Search/presentation/views/widget/search_view_text_Field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles/text_styel.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchViewTextField(),
          SizedBox(height: 10,),
          Text(
            "Search ",
            style: AppFontStyles.textStyle20,
          ),
          SizedBox(height: 15,),

          Expanded(child: SearchResultVerticalListView())
        ],
      ),
    );
  }
}

