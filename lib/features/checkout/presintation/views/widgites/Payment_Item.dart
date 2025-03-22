import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Decoration.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${title} :',
          style: AppStyle.bold13,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          decoration: AppDecration.grayBoxDecoration,
          child: child,
        ),
      ],
    );
  }
}
