import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

class FeatureItembotton extends StatelessWidget {
  const FeatureItembotton({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 32,
        //padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: Text(
            'تسوق الان',
            style: AppStyle.bold13.copyWith(
              color: Color(0xFF1B5E37),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
