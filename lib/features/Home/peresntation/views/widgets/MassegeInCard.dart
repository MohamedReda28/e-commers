import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/services/services/CustomBlocObserver.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cubit/cart_cubit_cubit.dart';

import '../../../../../core/uitels/App_TextStyle.dart';

class Massegeincard extends StatelessWidget {
  const Massegeincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 41,
      padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFEBF9F1)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'لديك ${context.watch<CartCubit>().cartEntity.carsItems.length} منتجات في سله التسوق',
            style: AppStyle.bold13.copyWith(
              color:  const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
    );
  }
}
