import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

class CartEntity {
  final List<CartItemEntity> carsItems;

  CartEntity(this.carsItems);

  addCardItem(CartItemEntity cartItemEntity) {
    carsItems.add(cartItemEntity);
  }

  removeCartItem(CartItemEntity cartItemEntity) {
    carsItems.remove(cartItemEntity);
  }

  double CalculteTotlePrice() {
    double totalPrice = 0;
    for (var carsItem in carsItems) {
      totalPrice += carsItem.CalculteTotlePrice();
    }
    return totalPrice;
  }


  bool isExis(ProductEntity product) {
    for (var carsItem in carsItems) {
      if (carsItem.productEntity == product) {
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
    return CartItemEntity(productEntity: productEntity, quantity: 1);
  }
}
