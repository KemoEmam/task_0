import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_images.dart';
import 'package:task/features/cart/domain/entities/cart_entity.dart';
import 'package:task/features/cart/presentation/views/widgets/cart_card.dart';
import 'package:task/features/cart/presentation/views/widgets/cart_checkout.dart';
import 'package:task/features/cart/presentation/views/widgets/cart_tab_widget.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartTapWidget(
                textColor: Colors.white,
                image: AppImages.imagesHomeIcon,
                title: 'Mi casa',
                backgroundColor: AppColors.primary,
              ),
              CartTapWidget(
                textColor: Colors.black,
                image: AppImages.imagesHomeIcon2,
                title: 'Mi Trabajo',
                backgroundColor: Colors.transparent,
              ),
              CircleAvatar(
                backgroundColor: AppColors.primary,
                radius: 22.r,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 45.h),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: cart.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
              child: CartCard(
                cartEntity: cart[index],
              ),
            ),
          ),
        ),
        CartCheckOut(),
      ],
    );
  }
}
