import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';

import '../../uitels/App_TextStyle.dart';

class RichTextforSubtitle extends StatelessWidget {
  const RichTextforSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '20جنية /',
              style: AppStyle.bold13.copyWith(
                color: AppColor.secondColor,
              ),),
          TextSpan(
              text: ' الكيلو',
              style: AppStyle.semibold13.copyWith(
                color:AppColor.lightsecondColor
              ),),
        ],
      ),
      //textAlign: TextAlign.right,
    );
  }
}
