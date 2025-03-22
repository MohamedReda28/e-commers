import 'dart:io';

import 'package:fruts_store/core/helpes_function/getAvgReting.dart';
import 'package:fruts_store/core/models/reviewPoductModel.dart';

import '../entitys/ProductEntity.dart';

class ProductModel {
  final String name;
  final String description;
  final String code;
  final num price;
  //final File image;
  final bool isFeature;
  String? imageUrl;
  final int expirationMonth;
  final int numberOfCaloric;
  final int unitAmount;
  // final num avgReting;
  num ratigCount;
  final int sellingcount;
  final bool isOrgnic;
//  final List<ReviewporductModel> reviews;

  ProductModel(
      {required this.expirationMonth,
      // required  this.avgReting,
      this.ratigCount = 0,
      required this.numberOfCaloric,
      required this.unitAmount,
      required this.name,
      required this.description,
      required this.code,
      required this.sellingcount,
      this.isOrgnic = false,
      required this.price,
      // required this.image,
      required this.isFeature,
      // required this.reviews,
      this.imageUrl});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      description: json['description'],
      code: json['code'],
      price: json['price'],
      //image: File(json['image']),
      isFeature: json['isFeature'],
      expirationMonth: json['expirationMonth'],
      numberOfCaloric: json['numberOfCaloric'],
      isOrgnic: json['isOrgnic'],
      imageUrl: json['imageUrl'],
      sellingcount: json['sellingcount'],
      unitAmount: json['unitAmount'] != null ? json['unitAmount'] : 0,
      // reviews: json['reviews'] != null
      //     ? List<ReviewporductModel>.from(
      //             json['reviews'].map((x) => ReviewporductModel.fromJson(x)))

      //     : [],
      //avgReting: getAvgReting(json['reviews']),
    );
  }
  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      description: description,
      code: code,
      price: price,
      //image: image,
      isFeature: isFeature,
      //avgReting:avgReting,
      expirationMonth: expirationMonth,
      numberOfCaloric: numberOfCaloric,
      unitAmount: unitAmount,
      isOrgnic: isOrgnic,
      imageUrl: imageUrl,
      //reviews: reviews.map((e) => e.toEntity()).toList(),
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
      // 'reviews': reviews.map((e) => e.toMap()).toList(),
    };
  }
}
