import 'package:flutter/material.dart';

class ActiveSippingItemDot extends StatelessWidget {
  const ActiveSippingItemDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        color: Color(0xFF1B5E37),
        shape: OvalBorder(
          side: BorderSide(width: 4, color: Colors.white),
        ),
      ),
    );
  }
}
