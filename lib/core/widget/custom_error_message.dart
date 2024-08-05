import 'package:bookly_app/core/styles/text_styel.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});
  final String errorMessage ;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: AppFontStyles.textStyle30,));
  }
}
