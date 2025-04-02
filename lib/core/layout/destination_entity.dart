import 'package:task/core/themes/styles/app_images.dart';

class DestinationEntity {
  final String icon;
  final String label;

  DestinationEntity({
    required this.icon,
    required this.label,
  });
}

List<DestinationEntity> get destinationEntity => [
      DestinationEntity(
        icon: AppImages.imagesHomeBar,
        label: 'Home',
      ),
      DestinationEntity(
        icon: AppImages.imagesShopBar,
        label: 'Shop',
      ),
      DestinationEntity(
        icon: AppImages.imagesCartBar,
        label: 'Cart',
      ),
    ];
