
import '../../../Home/domines/entites/CartItemEntity.dart';
class Orderproductmodel {
  
  final String name;
  final String code;
  final double price;
  final int quantity;
  final String Urlimage;

  Orderproductmodel({required this.name, required this.code, required this.price, required this.quantity, required this.Urlimage});
  

  factory Orderproductmodel.fromEntity(CartItemEntity cartItemEntity){
    return Orderproductmodel(
      name: cartItemEntity.productEntity.name,
      code: cartItemEntity.productEntity.code,
      price: cartItemEntity.productEntity.price.toDouble(),
      quantity: cartItemEntity.quantity,
      Urlimage: cartItemEntity.productEntity.imageUrl!,
      
      );
  }


  toJson(){
    return {
      'name': name,
      'code': code,
      'price': price,
      'quantity': quantity,
      'Urlimage': Urlimage,
      };
  }  


}