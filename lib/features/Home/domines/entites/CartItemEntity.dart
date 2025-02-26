import 'package:fruts_store/core/entitys/ProductEntity.dart';

class CartItemEntity{
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity,this.count=0});


   num CalculteTotlePrice(){
    return productEntity.price * count;
   }
   num CalculteTotleWeight(){
    return productEntity.unitAmount * count;
   }

   increaseCount(){
    count++;
   }

   decreaseCount(){

    count--;
   }

}