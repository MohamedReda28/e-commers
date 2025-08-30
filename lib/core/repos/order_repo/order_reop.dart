import 'package:dartz/dartz.dart';
import '../../../features/checkout/domines/entitys/Order_Entity.dart';
import '../../erroes/Failur.dart';

abstract class OrderRepo {
  Future<Either<Failur, void>> addOrder(OrderInputEntity orderEntity);
}
