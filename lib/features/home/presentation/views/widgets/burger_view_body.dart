import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_images.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/ingredient_entity.dart';
import 'package:task/features/home/presentation/views/widgets/gradient_button.dart';
import 'package:task/features/home/presentation/views/widgets/ingredients_item.dart';

class BurgerViewBody extends StatelessWidget {
  const BurgerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Background Image
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90),
                  ),
                  image: DecorationImage(
                    image: AssetImage(AppImages.imagesBurgerFeatured),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 55.w,
                bottom: 10.h,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.r,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),

              // AppBar Over Image
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_sharp,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'Hamburguesa especial',
                      style: AppTextStyles.segoeUiRegular16
                          .copyWith(color: Colors.white),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ],
          ),

          // Bottom Section
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.w),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(90),
                  topLeft: Radius.circular(90),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 20.h), // Space for nav bar
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Descripción",
                        style: AppTextStyles.segoeUiRegular19.copyWith(
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    // Description
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam "
                      "nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
                      "erat, sed diam voluptua. At vero eos et accusam et justo duo dolores",
                      style: AppTextStyles.segoeUiRegular11.copyWith(
                        color: AppColors.primaryText.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Ingredientes",
                            style: AppTextStyles.segoeUiRegular19.copyWith(
                              color: AppColors.primaryText,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "10 ingredientes",
                          style: AppTextStyles.segoeUiRegular10
                              .copyWith(color: AppColors.secondaryText),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: ingredients.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => IngredientItem(
                          ingredient: ingredients[index],
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.primaryText.withOpacity(0.2),
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 65.h,
                            width: MediaQuery.of(context).size.width * 0.51,
                            child: GradientButton(
                                onPressed: () {}, text: 'Ordenar ahora'),
                          ),
                          const Spacer(),
                          Text(
                            '\$12.58',
                            style: AppTextStyles.segoeUiRegular22.copyWith(
                                color: AppColors.primaryText, fontSize: 28.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
