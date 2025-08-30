import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/checkout/data/models/AddressOrder_model.dart';
import 'package:fruts_store/features/checkout/data/models/orderProductModel.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import 'package:uuid/uuid.dart';

import '../../../Home/domines/entites/CardEntity.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final String oID;
  final AddressOrderModel addressOrderModel;
  final List<Orderproductmodel> orderProductModel;
  final String payMethod;

  OrderModel(
      {required this.totalPrice,
      required this.uID,
      required this.oID,
      required this.addressOrderModel,
      required this.orderProductModel,
      required this.payMethod});

  factory OrderModel.fromEntity(OrderInputEntity orderEntity) {
    return OrderModel(
      oID: Uuid().v4(),
      totalPrice: orderEntity.cartList.CalculteTotlePrice(),
      uID: orderEntity.uID,
      addressOrderModel:
          AddressOrderModel.fromEntity(orderEntity.addressOrderentity),
      payMethod: orderEntity.paywithCash! ? 'Cach' : 'Paypal',
      orderProductModel: orderEntity.cartList.carsItems
          .map((e) => Orderproductmodel.fromEntity(e))
          .toList(),
    );
  }

  toJson() {
    return {
      'oID':oID,
      'totalPrice': totalPrice,
      'uID': uID,
      'status':'pending',
      'date':DateTime.now().toString(),
      'addressOrderModel': addressOrderModel.toJson(),
      'orderProductModel': orderProductModel.map((e) => e.toJson()).toList(),
      'payMethod': payMethod
    };
  }
}
