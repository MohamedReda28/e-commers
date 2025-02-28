part of 'cart_cubit_cubit.dart';

@immutable
sealed class CartCubitState {}

final class CartCubitInitial extends CartCubitState {}
final class CartProductAdd extends CartCubitState {}
final class CartProductRemove extends CartCubitState {}
