import 'package:fruts_store/core/repos/order_repo/oreder_repo_impl.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  
   factory PaypalPaymentEntity.fromEntity(OrderEntity entity) {
    return PaypalPaymentEntity(
      amount: Amount.fromEntity(entity),
      description: "payment describtion",
      itemList: ItemList.fromEntity(entity.cartList.carsItems),
      );

   }
    

 toJson(){
  return {
    'amount':amount?.toJson(),
    'description':description,
    'itemList':itemList?.toJson(),
    };
 }
}
