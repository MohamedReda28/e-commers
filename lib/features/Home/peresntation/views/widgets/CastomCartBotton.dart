import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/Widghts/Custom_Botton.dart';
import 'package:fruts_store/core/helpes_function/BuildSnakBar.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cart_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cartItem/cart_item_cubit.dart';
import 'package:fruts_store/features/checkout/presintation/views/checkout_view.dart';

class CastomCartBotton extends StatelessWidget {
  const CastomCartBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomBotton(
            title:
                'الدفع  ${context.watch<CartCubit>().cartEntity.CalculteTotlePrice()}جنيه ',
            ontap: () {
              if (context.read<CartCubit>().cartEntity.carsItems.isNotEmpty) {
                Navigator.pushNamed(context, Checkout_View.routeName,
                    arguments: context.read<CartCubit>().cartEntity);
              } else {
                BuildSnakBar(context, 'لا يوجد منتجات في السله');
              }
            });
      },
    );
  }
}
