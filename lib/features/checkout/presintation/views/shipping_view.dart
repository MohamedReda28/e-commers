import 'package:flutter/material.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/shipping_view_body.dart';
import 'package:provider/provider.dart';
import '../../../../core/Widghts/BuildAppBarCustom.dart';
import '../../../Home/domines/entites/CardEntity.dart';

class Checkout_View extends StatelessWidget {
  const Checkout_View({super.key, required this.cartItems});
  static const routeName = 'shipping';
  final CartEntity cartItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,title: 'الشحن'),
      body: SafeArea(
          child: Provider.value(
            value: OrderEntity(cartItems),
              child: Checkout_View_Body()),
      ),
    );
  }
}
