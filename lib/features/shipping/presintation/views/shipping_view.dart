import 'package:flutter/material.dart';
import 'package:fruts_store/features/shipping/presintation/views/widgites/shipping_view_body.dart';

class Shipping_View extends StatelessWidget {
  const Shipping_View({super.key});
  static const routeName = 'shipping';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Shipping_View_Body()),
    );
  }
}
