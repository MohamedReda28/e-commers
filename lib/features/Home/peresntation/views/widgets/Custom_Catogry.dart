import 'package:flutter/material.dart';

class CustomCatogry extends StatelessWidget {
  const CustomCatogry({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 64,
        height: 64,
        decoration: const ShapeDecoration(
          color: Color(0xFFF3F5F7),
          shape: OvalBorder(),
        ),
        child: Container(
          width: 45,
          height: 45,
          child: Image.network(
              'https://hfactftuiammeesnsrzg.supabase.co/storage/v1/object/public/fruits_image/images/39.jpg..jpg'),
        ));
  }
}
