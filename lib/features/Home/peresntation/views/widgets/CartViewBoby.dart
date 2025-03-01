import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/Widghts/Custom_Botton.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cubit/cart_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/CartItemList.dart';
import '../../../../../constsns.dart';
import '../../../../../core/Widghts/CustomAppbar2.dart';
import 'MassegeInCard.dart';

class Cartviewboby extends StatelessWidget {
  const Cartviewboby({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        CustomScrollView(
        slivers:  [
          SliverToBoxAdapter(child: Column(
            children: const [
              SizedBox(height: kTopPadding,),
              CustomAppbar2(title: 'السلة',visableicon: false,),
              SizedBox(height: 16,),
              Massegeincard(),
              SizedBox(height: 16,),
             ],
            ),
          ),
          Cartitemlist(cartitems: context.watch<CartCubit>().cartEntity.carsItems),

        ],
      ),
        Positioned(
          left: 15,
          right: 15,
          bottom: MediaQuery.sizeOf(context).height *0.06,
            child: CustomBotton(title: 'الدفع  ${context.watch<CartCubit>().cartEntity.CalculteTotlePrice()}جنيه ', ontap: (){})),

      ]
    );
  }
}
