import 'package:task/core/themes/styles/app_images.dart';

class CategoryEntity {
  final String name;
  final String image;
  final int backgroundColor;

  const CategoryEntity({
    required this.name,
    required this.image,
    required this.backgroundColor,
  });
}

//class model
final List<CategoryEntity> categories = [
  CategoryEntity(
    name: 'Tacos',
    image: AppImages.imagesTacos,
    backgroundColor: 0xFFD0E6A5,
  ),
  CategoryEntity(
    name: 'Frias',
    image: AppImages.imagesFrias,
    backgroundColor: 0xFF86E3CE,
  ),
  CategoryEntity(
    name: 'Burger',
    image: AppImages.imagesBurger,
    backgroundColor: 0xFFFFDD95,
  ),
  CategoryEntity(
    name: 'Pizza',
    image: AppImages.imagesPizza,
    backgroundColor: 0xFFFFACAC,
  ),
  CategoryEntity(
    name: 'Burritos',
    image: AppImages.imagesBurito,
    backgroundColor: 0xFFCCAAD9,
  ),
];
