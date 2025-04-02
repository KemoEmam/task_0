import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/domain/entities/item_entity.dart';

class ProductDetailsView extends StatelessWidget {
  final ItemEntity product;

  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.asset(product.image, height: 250.h),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title ?? '',
                    style: AppTextStyles.segoeUiRegular16),
                Text(product.description,
                    style: AppTextStyles.segoeUiRegular12),
                Text('\$${product.price}',
                    style: AppTextStyles.segoeUiRegular16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
