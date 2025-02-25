import 'package:flutter/material.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/CartItem.dart';

class Cartitemlist extends StatelessWidget {
  const Cartitemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Divider(
            color: Color(0xFFF1F1F5),
            height: 22,

          ),
        );
      },
      itemCount: 20,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorsintalPadding),
            child: CartItim(),
          );
        }
    );
  }
}
