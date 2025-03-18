
import 'package:dartz/dartz.dart';
import 'package:fruts_store/core/erroes/Failur.dart';
import 'package:fruts_store/core/repos/order_repo/order_reop.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import '../../../features/checkout/data/models/order model.dart';
import '../../services/services/DataBase_Serveces.dart';
import '../../uitels/backend Impoint.dart';

class OrederRepoImpl implements OrderRepo{
  final DataBaseServeces dataBaseServeces;
  OrederRepoImpl({required this.dataBaseServeces});
  @override
  Future<Either<Failur,void>> addOrder(OrderEntity orderEntity) async{
    try{
      await dataBaseServeces.addData(
          path: BackEndImpoint.addOrders,
          data: OrderModel.fromOEntity(orderEntity).toJson());
      return const Right(null);
    }catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
  
  
}