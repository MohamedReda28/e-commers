import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  factory Details.fromEntity(OrderInputEntity entity) {
    return Details(
      subtotal: entity.cartList.CalculteTotlePrice().toString(),
      shipping: entity.CalculatShippingCost().toString(),
      shippingDiscount: entity.CalculatShippingDiscounnt().toInt(),
      );
  }

  toJson(){
    return {
      'subtotal': subtotal,
      'shipping': shipping,
      'shippingDiscount': shippingDiscount,
      };
  }
}
