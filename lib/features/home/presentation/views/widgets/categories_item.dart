import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/categories_entity.dart';

class CategoriesItem extends StatelessWidget {
  final CategoryEntity category;
  const CategoriesItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66.h,
          width: 66.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            color: Color(category.backgroundColor),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Image.asset(
              category.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          category.name,
          style: AppTextStyles.segoeUiRegular12
              .copyWith(color: AppColors.primaryText),
        ),
      ],
    );
  }
}
