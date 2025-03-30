import 'package:task/core/themes/styles/app_images.dart';

class IngredientEntity {
  final String name;
  final String image;

  const IngredientEntity({
    required this.name,
    required this.image,
  });
}

// Predefined ingredient list
final List<IngredientEntity> ingredients = [
  IngredientEntity(name: 'Arrachera', image: AppImages.imagesIngredients1),
  IngredientEntity(name: 'Pan ajonjoli', image: AppImages.imagesIngredients2),
  IngredientEntity(name: 'Lechuga', image: AppImages.imagesIngredients3),
  IngredientEntity(name: 'Cebolla', image: AppImages.imagesIngredients4),
];
