import 'package:flutter/material.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/CartItem.dart';

class Cartitemlist extends StatelessWidget {
  const Cartitemlist({super.key, required this.cartitems});
final List<CartItemEntity> cartitems;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount:cartitems.length,
      separatorBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Divider(
            color: Color(0xFFF1F1F5),
            height: 22,

          ),
        );
      },

        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorsintalPadding),
            child: CartItim(cartItemEntity: cartitems[index],),
          );
        }
    );
  }
}
