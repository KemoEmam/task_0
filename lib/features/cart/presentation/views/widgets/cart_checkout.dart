import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';
import 'package:task/features/home/presentation/views/widgets/gradient_button.dart';

class CartCheckOut extends StatelessWidget {
  const CartCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSummaryRow("Subtotal", "\$85.00 USD",
                      color: AppColors.primaryText),
                  SizedBox(height: 6.h),
                  _buildSummaryRow("Envío", "Gratis",
                      color: AppColors.primaryText),
                  SizedBox(height: 14.h),
                  _buildSummaryRow("Total", "\$85.00 USD",
                      isBold: true, color: AppColors.primary),
                ],
              ),
            ),
            GradientButton(
              onPressed: () {},
              text: "Realizar compra",
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value,
      {bool isBold = false, Color? color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: (isBold
                  ? AppTextStyles.segoeUiRegular18
                  : AppTextStyles.segoeUiRegular14)
              .copyWith(color: color),
        ),
        Text(
          value,
          style: (isBold
                  ? AppTextStyles.segoeUiRegular18
                  : AppTextStyles.segoeUiRegular14)
              .copyWith(color: color),
        ),
      ],
    );
  }
}
