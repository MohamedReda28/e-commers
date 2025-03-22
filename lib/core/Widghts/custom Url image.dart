import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => Container(
          color: Colors.grey,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
