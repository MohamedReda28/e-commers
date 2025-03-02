import 'package:equatable/equatable.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';

class CartItemEntity extends Equatable{
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

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];

}