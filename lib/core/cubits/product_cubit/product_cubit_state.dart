part of 'product_cubit_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductCubitInitial extends ProductState {}

final class ProductCubitLoading extends ProductState {}

final class ProductCubitFailure extends ProductState {
  final String message;
   ProductCubitFailure(this.message);
}

final class ProductCubitSuccess extends ProductState {
  final List<ProductEntity> products;
  ProductCubitSuccess( this.products);
  }  



