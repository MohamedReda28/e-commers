import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fruts_store/core/repos/order_repo/order_reop.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';

part 'order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.orederRepo) : super(AddOrderInitial());
  final OrderRepo orederRepo;


  Future<void> addOrder(OrderEntity orderEntity)async{
    emit(AddOrderLoading());
     var result = await orederRepo.addOrder(orderEntity);
     result.fold(
        (faluir)=> emit(AddOrderFaluir(faluir.message)),
        (success)=>emit(AddOrderSuccess()),
     );
 }

 
}
