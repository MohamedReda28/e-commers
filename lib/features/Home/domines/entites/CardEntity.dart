import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

class CartEntity{

  final List<CartItemEntity>carsItems;

  CartEntity(this.carsItems);

  addCardItem(CartItemEntity cartItemEntity){
    carsItems.add(cartItemEntity);
  }
  
  bool isExis(ProductEntity product){

    for(var carsItem in carsItems) {

      if(carsItem.productEntity==product){
        return true;
      } 
    }
    return false;
  }

  CartItemEntity gitProduct(ProductEntity productEntity) {
    for (var carsItem in carsItems) {
      if (carsItem.productEntity == productEntity) {
        return carsItem;
      }
    }
    return 
     CartItemEntity( productEntity: productEntity,count: 1); 
     
  }
  

  
}