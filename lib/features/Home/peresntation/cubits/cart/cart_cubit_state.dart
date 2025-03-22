part of 'cart_cubit_cubit.dart';

@immutable
sealed class CartCubitState {}

final class CartCubitInitial extends CartCubitState {}

final class CartItemAdd extends CartCubitState {}

final class CartItemRemove extends CartCubitState {}
