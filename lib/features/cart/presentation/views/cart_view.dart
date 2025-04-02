import 'package:flutter/material.dart';
import 'package:task/core/themes/styles/app_colors.dart';
import 'package:task/core/themes/styles/app_text_styles.dart';

import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Carrito',
          style:
              AppTextStyles.segoeUiRegular22.copyWith(color: AppColors.primary),
        ),
      ),
      body: SafeArea(
        child: CartViewBody(),
      ),
    );
  }
}
