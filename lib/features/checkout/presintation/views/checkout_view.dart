import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/repos/order_repo/order_reop.dart';
import 'package:fruts_store/core/services/services/git_it_Service.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import 'package:fruts_store/features/checkout/presintation/maneger/addProductCubit/order_cubit.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/add_order_cubit_bloc_builder.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/checkout_view_body.dart';
import 'package:provider/provider.dart';
import '../../../../core/Widghts/BuildAppBarCustom.dart';
import '../../../../core/helpes_function/getUser.dart';
import '../../../Home/domines/entites/CardEntity.dart';

class Checkout_View extends StatelessWidget {
  const Checkout_View({super.key, required this.cartItems});
  static const routeName = 'shipping';
  final CartEntity cartItems;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => AddOrderCubit(getIt<OrderRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context,title: 'الشحن'),
        body: SafeArea(
            child: Provider.value(
              value: OrderEntity(
                cartList:cartItems,
                uID: getUser().uid,
              ),
                child: AddOrderCubitBlocBuilder(child: Checkout_View_Body())),
        ),
      ),
    );
  }
}
