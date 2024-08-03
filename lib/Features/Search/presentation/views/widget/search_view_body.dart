import 'package:bookly_app/Features/Search/presentation/views/widget/search_view_text_Field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SearchViewTextField(),
        ],
      ),
    );
  }
}
