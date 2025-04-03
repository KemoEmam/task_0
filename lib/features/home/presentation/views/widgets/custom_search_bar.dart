import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.grey[300]!), // Light grey outline
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey[600]),
            SizedBox(width: 5.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar...",
                  hintStyle: AppTextStyles.segoeUiRegular10.copyWith(
                    color: Color(0xFFE2EDF2),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
