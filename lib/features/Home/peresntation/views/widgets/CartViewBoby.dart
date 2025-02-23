import 'package:flutter/material.dart';
import '../../../../../constsns.dart';
import '../../../../../core/Widghts/CustomAppbar2.dart';
import 'CustomProductCart.dart';
import 'MassegeInCard.dart';

class Cartviewboby extends StatelessWidget {
  const Cartviewboby({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Column(
          children: [
            SizedBox(height: kTopPadding,),
            CustomAppbar2(title: 'السلة',visableicon: false,),
            SizedBox(height: 16,),
            Massegeincard(),
            SizedBox(height: 16,),
            Customproductcart(),


          ],
        ),
        ),

      ],
    );
  }
}
