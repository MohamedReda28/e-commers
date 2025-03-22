import 'package:flutter/material.dart';

import '../uitels/App_Color.dart';
import '../uitels/App_TextStyle.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 343,
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
        decoration: ShapeDecoration(
          color: AppColor.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyle.bold16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
