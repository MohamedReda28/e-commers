import 'package:flutter/material.dart';

class InActiveSippingItemDot extends StatelessWidget {
  const InActiveSippingItemDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: OvalBorder(
          side: BorderSide(width: 1, color: Color(0xFF949D9E)),
        ),
      ),
    );
  }
}
