import 'package:flutter/material.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/Widghts/CustomAppbar2.dart';


class Shipping_View_Body extends StatelessWidget {
  const Shipping_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     slivers: const [
      SliverToBoxAdapter(
        child: Column(
        children: [
            SizedBox(height: kTopPadding,),
            CustomAppbar2(title: 'الشحن',visableicon:false),
          ],
         ),
        ),
      ],
    );
  }
}