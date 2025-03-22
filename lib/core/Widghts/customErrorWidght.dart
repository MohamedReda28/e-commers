import 'package:flutter/material.dart';

class Customerrorwidght extends StatelessWidget {
  const Customerrorwidght({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
