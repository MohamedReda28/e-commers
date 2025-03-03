import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void updateCartItem(CartItemEntity cartItemEntity){
    emit(CartItemUpdate(cartItemEntity));
  }
}
