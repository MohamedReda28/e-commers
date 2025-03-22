import '../entitys/reviewPorductEntity.dart';

class ReviewporductModel {
  final String name;
  final String revdescription;
  final String image;
  final String data;
  final num ratting;

  ReviewporductModel({
    required this.name,
    required this.revdescription,
    required this.image,
    required this.data,
    required this.ratting,
  });

  factory ReviewporductModel.fromEntity(
      ReviewporductEntity reviewporductEntity) {
    return ReviewporductModel(
      name: reviewporductEntity.name,
      revdescription: reviewporductEntity.revdescription,
      image: reviewporductEntity.image,
      data: reviewporductEntity.data,
      ratting: reviewporductEntity.ratting,
    );
  }
  factory ReviewporductModel.fromJson(Map<String, dynamic> json) {
    return ReviewporductModel(
      name: json['name'],
      revdescription: json['revdescription'],
      image: json['image'],
      data: json['data'],
      ratting: json['ratting'],
    );
  }
  ReviewporductEntity toEntity() {
    return ReviewporductEntity(
      name: name,
      revdescription: revdescription,
      image: image,
      data: data,
      ratting: ratting,
    );
  }

  toMap() {
    return {
      'name': name,
      'revdescription': revdescription,
      'image': image,
      'data': data,
      'ratting': ratting,
    };
  }
}
