import 'package:dartz/dartz.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/core/erroes/Failur.dart';
import 'package:fruts_store/core/models/productModel.dart';
import 'package:fruts_store/core/repos/product_repo/product_repo.dart';
import 'package:fruts_store/core/services/services/DataBase_Serveces.dart';
import 'package:fruts_store/core/uitels/backend%20Impoint.dart';

class productRepoImpl implements ProductRepo {
  final DataBaseServeces dataBaseServeces;
  productRepoImpl({required this.dataBaseServeces});
  @override
  Future<Either<Failur, List<ProductEntity>>> getBestSellingProduct() async {
    try {
      var data = await dataBaseServeces
          .getData(path: BackEndImpoint.getproducts, query: {
        'limit': 10,
        'orderBy': 'sellingcount',
        'descending': true,
      }) as List<Map<String, dynamic>>;

      List<ProductModel> products =
      data.map((e) => ProductModel.fromJson(e)).toList();
      List<ProductEntity> productEntit =
      products.map((e) => e.toEntity()).toList();
      return right(productEntit);
    } catch (e) {
      return left(ServerFailure('Failed to load products'));
    }
  }
  @override
  Future<Either<Failur, List<ProductEntity>>> getProduct() async {
    try {
      var data = await dataBaseServeces.getData(
          path: BackEndImpoint.getproducts) as List<Map<String, dynamic>>;

      List<ProductModel> products =
          data.map((e) => ProductModel.fromJson(e)).toList();
      List<ProductEntity> productEntit =
          products.map((e) => e.toEntity()).toList();
      return right(productEntit);
    } catch (e) {
      return left(ServerFailure('Failed to load products'));
    }
  }
  Future<Either<Failur, List<ProductEntity>>> searchProductsByName(
      {required String productName}) async {
    try {
      if (productName.isEmpty) {
        return left(ServerFailure('Product name can’t be empty'));
      }

      var query = {
        'searchField': 'name',
        'keyword': productName,
        'limit': 20, // ممكن تغير العدد حسب الحاجة
      };

      var data = await dataBaseServeces.getData(
        path: BackEndImpoint.getproducts,
        query: query,
      ) as List<Map<String, dynamic>>;

      List<ProductModel> products = data.map((e) => ProductModel.fromJson(e)).toList();
      List<ProductEntity> productEntit = products.map((e) => e.toEntity()).toList();

      return right(productEntit);
    } catch (e) {
      return left(ServerFailure('Failed to search products'));
    }
  }

}
