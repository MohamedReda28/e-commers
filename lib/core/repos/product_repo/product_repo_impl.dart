import 'package:dartz/dartz.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/core/erroes/Failur.dart';
import 'package:fruts_store/core/repos/product_repo/product_repo.dart';
import 'package:fruts_store/core/services/services/DataBase_Serveces.dart';

class productRepoImpl implements productRepo
{
  final DataBaseServeces dataBaseServeces;
  productRepoImpl({required this.dataBaseServeces});
  @override
  Future<Either<Failur, List<ProductEntity>>> getBestSellingProduct() {
    // TODO: implement getBestSellingProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failur, List<ProductEntity>>> getProduct() async{
   var products =await dataBaseServeces.getData(path: path);
  }


}