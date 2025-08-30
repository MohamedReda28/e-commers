import 'package:dartz/dartz.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/core/erroes/Failur.dart';

abstract class ProductRepo {
  Future<Either<Failur, List<ProductEntity>>> getProduct();
  Future<Either<Failur, List<ProductEntity>>> getBestSellingProduct();
  //Future<Either<Failur, List<ProductEntity>>> getBestSellingProduct({String? productName});
  Future<Either<Failur, List<ProductEntity>>> searchProductsByName(
      {required String productName});

}
