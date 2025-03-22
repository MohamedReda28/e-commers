part of 'order_cubit.dart';

sealed class AddOrderState extends Equatable {
  const AddOrderState();

  @override
  List<Object> get props => [];
}

final class AddOrderInitial extends AddOrderState {}

final class AddOrderLoading extends AddOrderState {}

final class AddOrderSuccess extends AddOrderState {}

final class AddOrderFaluir extends AddOrderState {
  final String messege;

  AddOrderFaluir(this.messege);
}
