import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

import '../uitels/app_images.dart';
import 'CustomNotifcation.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(Assets.imagesArrowBack),
        ),
        Text(title,style:AppStyle.bold19),

        const CustomNotifcation(),
      ],
    );
  }
}



