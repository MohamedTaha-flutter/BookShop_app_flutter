import 'package:bookly_app/core/styles/text_styel.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.onPressed,
    required this.text,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppFontStyles.textStyle26.copyWith(
          color: textColor,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
