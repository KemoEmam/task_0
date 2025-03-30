import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/ingredient_entity.dart';

class IngredientItem extends StatelessWidget {
  final IngredientEntity ingredient;

  const IngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.w,
          height: 125.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(ingredient.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          ingredient.name,
          style: AppTextStyles.segoeUiRegular11
              .copyWith(color: AppColors.secondaryText),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
