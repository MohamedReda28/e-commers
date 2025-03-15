import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Address_OrderEntity.dart';

class OrderEntity{

 final CartEntity cartList;
  bool? paywithCash;
  AddressOrderentity addressOrderentity = AddressOrderentity();

  OrderEntity(this.cartList,  {this.paywithCash,});

 



}