import 'package:bloc/bloc.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';
import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubit extends Cubit<CartCubitState> {
  CartCubit() : super(CartCubitInitial());
 
  CartEntity cartEntity = CartEntity([]);
  @override
  void AddProduct(ProductEntity productEntity) {
    bool isExis= cartEntity.isExis(productEntity);
     var carsItem= cartEntity.gitProduct(productEntity);
    if(isExis){
     carsItem.increaseCount();
    } else{
         cartEntity.addCardItem(carsItem);
    }
    emit(CartItemAdd());
  }

  void RemoveCardItem(CartItemEntity cartItemEntity){
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartItemRemove());
  }
  
}
