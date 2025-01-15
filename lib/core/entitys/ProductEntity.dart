import 'dart:io';

import 'package:fruts_store/core/entitys/reviewPorductEntity.dart';

class ProductEntity {
  final String name;
  final String description;
  final String code;
  final num price;
  final File image;
  final bool isFeature;
  String? imageUrl;
  final int expirationMonth;
  final int numberOfCaloric;
  final int unitAmount;
  final num avgReting = 0;
  final num ratigCount = 0;
  final bool isOrgnic;
  final List<ReviewporductEntity> reviews;

  ProductEntity(
      {required this.name,
      required this.expirationMonth,
      required this.reviews,
      required this.numberOfCaloric,
      required this.unitAmount,
      required this.description,
      required this.code,
      required this.price,
      required this.image,
      required this.isFeature,
      this.isOrgnic = false,
      this.imageUrl});
}
