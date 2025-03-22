import 'package:flutter/material.dart';

class CustomCartitemactionbotton extends StatelessWidget {
  const CustomCartitemactionbotton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onpressed,
      required this.colorIcon});
  final IconData icon;
  final Color color, colorIcon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.all(2),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: FittedBox(
            child: Icon(
          icon,
          color: colorIcon,
        )),
      ),
    );
  }
}
