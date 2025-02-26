import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

class CartEntity{

  final List<CartItemEntity>carsItems;

  CartEntity(this.carsItems);

  addCardItem(CartItemEntity cartItemEntity){
    carsItems.add(cartItemEntity);
  }
  
}