import 'package:bookly_app/Features/Home/presentation/Views/Widget/AppBar_Home_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
      ],
    );
  }
}
