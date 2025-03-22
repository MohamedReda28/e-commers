import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';
import 'package:fruts_store/core/uitels/app_images.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.image,
    required this.name,
  });

  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        decoration: ShapeDecoration(
          color: Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: SvgPicture.asset(
                image,
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(name,
                style: AppStyle.semibold11.copyWith(
                  color: Color(0xFF1B5E37),
                ))
          ],
        ),
      ),
    );
  }
}
