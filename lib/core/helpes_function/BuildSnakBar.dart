import 'package:flutter/material.dart';

void BuildSnakBar(BuildContext context, String messege) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(messege),
    ),
  );
}

