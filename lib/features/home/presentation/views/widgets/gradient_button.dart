import 'package:flutter/material.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final double? height;

  const GradientButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30), // Matches button shape
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF4A1192), Color(0xFF2CD5C4)], // Gradient colors
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,
              style:
                  AppTextStyles.segoeUiRegular17.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
