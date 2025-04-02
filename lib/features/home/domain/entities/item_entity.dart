import 'package:task/core/themes/styles/app_images.dart';

class ItemEntity {
  final String name;
  final String image;
  final String description;
  final double? price;
  final String? title;

  const ItemEntity({
    required this.name,
    required this.image,
    required this.description,
    this.price,
    this.title,
  });
}

// Products List (Pizza & Burger)
final List<ItemEntity> products = List.generate(10, (index) {
  return index.isEven
      ? ItemEntity(
          name: 'Pizza Clásica',
          image: AppImages.imagesPizzaProduct,
          description: 'Salsa clásica de la casa',
          price: 12.58,
        )
      : ItemEntity(
          name: 'Cheeseburger',
          image: AppImages.imagesBurgerProduct,
          description: 'Carne de res con queso',
          price: 10.99,
        );
});

// Juice List
final List<ItemEntity> juices = [
  ItemEntity(
    name: 'Malteadas tropicales',
    image: AppImages.imagesStrawberryJuice,
    description: 'Salsa clásica de la casa',
    price: 11.58,
    title: 'Naturales',
  ),
  ItemEntity(
    name: 'Malteadas tropicales',
    image: AppImages.imagesOrageJuice,
    description: 'Elaborado con jugos naturales',
    price: 5.99,
    title: 'Naturales',
  ),
];
