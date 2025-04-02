import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';

class CartTapWidget extends StatelessWidget {
  final String title;
  final String image;
  final Color backgroundColor;
  final Color textColor;
  const CartTapWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2EDF2)),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(image, scale: 2.5.sp),
            SizedBox(width: 14.w),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title,
                  style: AppTextStyles.segoeUiRegular11
                      .copyWith(color: textColor)),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Direción de ejemplo',
                    style: AppTextStyles.segoeUiRegular10.copyWith(
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
