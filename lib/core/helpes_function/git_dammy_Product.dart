import 'dart:io';

import 'package:fruts_store/core/entitys/ProductEntity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Organic Apples',
    description: 'Fresh and delicious organic apples.',
    code: '12345',
    price: 9.99,
    //image: File(''),
   /// avgReting: 2.2,
    isFeature: true,
    expirationMonth: 6,
    numberOfCaloric: 95,
    unitAmount: 1,
    //reviews: [],
    isOrgnic: true,
    imageUrl: " ",
  );
}

List<ProductEntity> getDomyProducts(){
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),

  ];
}