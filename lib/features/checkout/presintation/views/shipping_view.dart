import 'package:flutter/material.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/shipping_view_body.dart';

import '../../../../core/Widghts/BuildAppBarCustom.dart';

class Checkout_View extends StatelessWidget {
  const Checkout_View({super.key});
  static const routeName = 'shipping';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,title: 'الشحن'),
      body: SafeArea(child: Checkout_View_Body()),
    );
  }
}
