import 'package:task/core/themes/styles/app_images.dart';

class CartEntity {
  final String image;
  final int quantity;

  const CartEntity({
    required this.image,
    required this.quantity,
  });
}

// Predefined item list
final List<CartEntity> cart = [
  CartEntity(image: AppImages.imagesBurgerCart, quantity: 2),
  CartEntity(image: AppImages.imagesBurgerCart2, quantity: 1),
];
