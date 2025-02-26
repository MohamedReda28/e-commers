part of 'cart_cubit_cubit.dart';

@immutable
sealed class CartCubitState {}

final class CartCubitInitial extends CartCubitState {}
final class CartCubitAdd extends CartCubitState {}
final class CartCubitRemove extends CartCubitState {}
