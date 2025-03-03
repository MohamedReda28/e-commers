import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cartItem/cart_item_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/CartViewBoby.dart';

class CartViews extends StatelessWidget {
  const CartViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartItemCubit(),
      child: Cartviewboby(),
    );
  }
}
