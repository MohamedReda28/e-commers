import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Address_OrderEntity.dart';

class OrderEntity{

 final CartEntity cartList;
 final String uID;
  bool? paywithCash;
  AddressOrderentity addressOrderentity = AddressOrderentity();

  OrderEntity({required this.cartList,this.paywithCash,required this.uID,});


}