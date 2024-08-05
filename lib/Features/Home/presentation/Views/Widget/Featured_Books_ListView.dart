import 'package:bookly_app/Features/Home/presentation/Views/Widget/custom_horizontal_List_view_Item.dart';
import 'package:bookly_app/Features/Home/presentation/management/featured_books_cubit/featured_books_logic.dart';
import 'package:bookly_app/Features/Home/presentation/management/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/core/widget/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_loading_indicator.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return Padding(
          padding: const EdgeInsets.only(left: 18),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const CustomBookImage(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
              itemCount: 20,
            ),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        CustomErrorMessage(
          errorMessage: state.errMessage,
        );
      } else {
        const CustomLoadingIndicator();
      }
      return Text(state.toString());
    });
  }
}
