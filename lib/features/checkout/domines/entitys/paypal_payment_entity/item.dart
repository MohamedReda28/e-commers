import 'package:fruts_store/core/helpes_function/get_currency.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

class Item {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  Item({this.name, this.quantity, this.price, this.currency});

  factory Item.fromEntity(CartItemEntity entity) {
    return Item(
      name: entity.productEntity.name,
      quantity: entity.quantity,
      price: entity.productEntity.price.toString(),
      currency: Getcurrency(),
      );
  }

 toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}
