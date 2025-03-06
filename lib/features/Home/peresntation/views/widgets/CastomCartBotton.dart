import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/Widghts/Custom_Botton.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cart_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cartItem/cart_item_cubit.dart';
import 'package:fruts_store/features/checkout/presintation/views/shipping_view.dart';

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
              Navigator.pushNamed(context, Checkout_View.routeName);
            });
      },
    );
  }
}
