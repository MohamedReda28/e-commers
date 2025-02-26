import 'package:bloc/bloc.dart';
import 'package:fruts_store/features/Home/domines/entites/CardEntity.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';
import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubitCubit extends Cubit<CartCubitState> {
  CartCubitCubit() : super(CartCubitInitial());
 
  CartEntity cartEntity = CartEntity([]);
  @override
  void AddCardItem(CartItemEntity cartItemEntity){

    cartEntity.addCardItem(cartItemEntity);

    emit(CartCubitAdd());
  }
  void RemoveCardItem(CartItemEntity cartItemEntity){

    emit(CartCubitRemove());
  }
  
}
