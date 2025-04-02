import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:go_router/go_router.dart';
import 'package:task/core/router/routes.dart';
=======
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/item_entity.dart';
import 'package:task/features/home/presentation/views/widgets/custom_card.dart';

class ProductCard extends StatefulWidget {
  final ItemEntity product;
  final double widthFactor;
  final double heightFactor;

  const ProductCard({
    super.key,
    required this.product,
    this.widthFactor = 1.0,
<<<<<<< HEAD
    this.heightFactor = 1.0,
=======
    this.heightFactor = 1.0, // Default height factor
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 3,
      color: Colors.white,
      child: Container(
        width: 180.w * widget.widthFactor,
        height: 220.h * widget.heightFactor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 8.h,
              right: 8.w,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isFavorited = !isFavorited;
                  });
                },
                icon: Icon(
                  isFavorited
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  color: isFavorited ? Colors.red : AppColors.secondaryText,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Image.asset(
                    widget.product.image,
                    height: 90.h * widget.heightFactor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.product.title != null)
                            Text(
                              widget.product.title!,
                              style: AppTextStyles.segoeUiRegular12.copyWith(
                                color: AppColors.primaryText,
                              ),
                            ),
                          Text(
                            widget.product.name,
                            style: AppTextStyles.segoeUiRegular12,
                          ),
                          Text(
                            widget.product.description,
<<<<<<< HEAD
                            style: AppTextStyles.segoeUiLight7
                                .copyWith(color: Colors.grey[900]),
=======
                            style: AppTextStyles.segoeUiLight7.copyWith(
                              color: AppColors.secondaryText,
                            ),
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '\$${widget.product.price?.toStringAsFixed(2)}',
                            style: AppTextStyles.segoeUiRegular12.copyWith(
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0.h),
                        child: Material(
                          elevation: 1,
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: CircleAvatar(
                            radius: 13.r,
                            backgroundColor: Colors.white,
                            child: IconButton(
<<<<<<< HEAD
                              onPressed: () {
                                context.push(Routes.burger);
                              },
=======
                              onPressed: () {},
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
                              icon: Icon(
                                size: 12.w,
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
