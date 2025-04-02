import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_images.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/cart/domain/entities/cart_entity.dart';
import 'package:task/features/home/presentation/views/widgets/custom_card.dart';

class CartCard extends StatelessWidget {
  final CartEntity cartEntity;

  const CartCard({super.key, required this.cartEntity});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomCard(
          elevation: 3,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(18.w),
            child: Column(
              spacing: 2.h,
              children: [
                CircleAvatar(
                  radius: 47.r,
                  backgroundImage: AssetImage(cartEntity.image),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Big Burger Queso",
                  style: AppTextStyles.segoeUiRegular16.copyWith(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et",
                    style: AppTextStyles.segoeUiRegular11.copyWith(
                      color: AppColors.secondaryText,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 14.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: AppColors.primary,
                        size: 26.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        "${cartEntity.quantity}",
                        style: AppTextStyles.segoeUiRegular14,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(color: AppColors.primaryText),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21.w,
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Text(
                      "\$20",
                      style: AppTextStyles.segoeUiRegular18.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff20D0C4)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -10.h,
          right: -10.w,
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.red,
            child: Image.asset(
              AppImages.imagesTrash,
              width: 18.w,
              height: 19.h,
            ),
          ),
        ),
      ],
    );
  }
}
