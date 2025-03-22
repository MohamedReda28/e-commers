import 'package:fruts_store/core/models/reviewPoductModel.dart';

num getAvgReting(List<dynamic> reviews) {
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  return sum / reviews.length;
}
