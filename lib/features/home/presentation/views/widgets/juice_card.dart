import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/item_entity.dart';
import 'package:task/features/home/presentation/views/widgets/custom_card.dart';

class JuiceProductCard extends StatefulWidget {
  final ItemEntity juice;

  const JuiceProductCard({super.key, required this.juice});

  @override
  State<JuiceProductCard> createState() => _JuiceProductCardState();
}

class _JuiceProductCardState extends State<JuiceProductCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w, // Increased width
      child: Stack(
        clipBehavior: Clip.none, // Allow image to overflow
        children: [
          // Card
          CustomCard(
            elevation: 3,
            color: Colors.white,
            child: Container(
              height: 140.h, // Reduced height
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  SizedBox(width: 100.w), // Space for the floating image

                  // Product info on the right
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Title & Heart Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                widget.juice.title ?? '',
                                style: AppTextStyles.segoeUiRegular12.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryText,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorited = !isFavorited;
                                });
                              },
                              icon: Icon(
                                isFavorited
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_border_rounded,
                                color: isFavorited
                                    ? Colors.red
                                    : AppColors.secondaryText,
                              ),
                            ),
                          ],
                        ),

                        // Name & Description
                        Text(
                          widget.juice.name,
                          style: AppTextStyles.segoeUiRegular12,
                        ),
                        Text(
                          widget.juice.description,
<<<<<<< HEAD
                          style: AppTextStyles.segoeUiLight7
                              .copyWith(color: Colors.grey[900]),
=======
                          style: AppTextStyles.segoeUiLight7.copyWith(
                            color: AppColors.secondaryText,
                          ),
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        // Price & Arrow Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${widget.juice.price?.toStringAsFixed(2)}',
                              style: AppTextStyles.segoeUiRegular12.copyWith(
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CircleAvatar(
                              radius: 14.r,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  size: 12.w,
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Floating Image
          Positioned(
            left: 10.w,
<<<<<<< HEAD
            bottom: 84.h,
            child: Image.asset(
              widget.juice.image,
              height: 101.h,
              width: 101.w,
=======
            bottom: 85.h, // Moves the image below the card
            child: Image.asset(
              widget.juice.image,
              height: 100.h,
              width: 100.w,
>>>>>>> f82daa790f04c5c5e5954d71db6fe5c40a524d4d
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
