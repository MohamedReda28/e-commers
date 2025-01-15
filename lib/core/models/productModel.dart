import 'dart:io';

import 'package:fruts_store/core/models/reviewPoductModel.dart';

import '../entitys/ProductEntity.dart';

class ProductModel {
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
  final int sellingcount;
  final bool isOrgnic;
  final List<ReviewporductModel> reviews;

  ProductModel(
      {required this.expirationMonth,
      required this.numberOfCaloric,
      required this.unitAmount,
      required this.name,
      required this.description,
      required this.code,
      required this.sellingcount,
      this.isOrgnic = false,
      required this.price,
      required this.image,
      required this.isFeature,
      required this.reviews,
      this.imageUrl});

  factory ProductModel.fromJson(Map<String,dynamic>json){
    return ProductModel(
      name: json['name'],
      description: json['description'],
      code: json['code'],
      price: json['price'],
      image: File(json['image']),
      isFeature: json['isFeature'],
      expirationMonth: json['expirationMonth'],
      numberOfCaloric: json['numberOfCaloric'],
      unitAmount: json['unitAmount'],
      reviews:json['reviews'] != null ? List<ReviewporductModel>.from(json['reviews'].map((x)
      => ReviewporductModel.fromJson(x))).toList() : [],
      sellingcount: json['sellingcount'],
      isOrgnic: json['isOrgnic'],
      imageUrl: json['imageUrl'],
      );

  }


  toMap() {
    return {
      'name': name,
      'description': description,
      'code': code,
      'price': price,
      'isFeature': isFeature,
      'imageUrl': imageUrl,
      'expirationMonth': expirationMonth,
      'numberOfCaloric': numberOfCaloric,
      'unitAmount': unitAmount,
      'sellingcount': sellingcount,
      'isOrgnic': isOrgnic,
      'reviews': reviews.map((e) => e.toMap()).toList(),
    };
  }
}
