import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_images.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/categories_entity.dart';
import 'package:task/features/home/domain/entities/item_entity.dart';
import 'package:task/features/home/presentation/views/widgets/categories_item.dart';
import 'package:task/features/home/presentation/views/widgets/juice_card.dart';
import 'package:task/features/home/presentation/views/widgets/product_card.dart';

import 'custom_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
              vertical: kHorizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchBar(),
                SizedBox(width: 15.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    'lnicio',
                    style: AppTextStyles.segoeUiRegular22
                        .copyWith(color: AppColors.primary),
                  ),
                ),
                SizedBox(width: 64.w),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImages.imagesNotifications),
                      SizedBox(width: 15.w),
                      SvgPicture.asset(AppImages.imagesPercentage),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              children: [
                Text(
                  'Explorar categorias',
                  style: AppTextStyles.segoeUiRegular16
                      .copyWith(color: AppColors.primaryText),
                ),
                Spacer(),
                Text(
                  'Ver todo',
                  style: AppTextStyles.segoeUiRegular12
                      .copyWith(color: AppColors.secondaryText),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 24.w),
                    child: CategoriesItem(category: categories[index]),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              children: [
                Text(
                  'Productos populares',
                  style: AppTextStyles.segoeUiRegular16
                      .copyWith(color: AppColors.primaryText),
                ),
                Spacer(),
                Text(
                  'Ver todo',
                  style: AppTextStyles.segoeUiRegular12
                      .copyWith(color: AppColors.secondaryText),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.265,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductCard(
                  product: products[index],
                  widthFactor: 1.0,
                  heightFactor: 1.0),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
            ),
          ),
          SizedBox(height: 30.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                'Recomendados',
                style: AppTextStyles.segoeUiRegular16
                    .copyWith(color: AppColors.primaryText),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.265,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: juices.length,
              itemBuilder: (context, index) {
                final juice = juices[index];
                return JuiceProductCard(juice: juice);
              },
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
