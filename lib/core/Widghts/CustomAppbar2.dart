import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

import '../uitels/app_images.dart';
import 'CustomNotifcation.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key, required this.title,  this.visableArw=true,  this.visableicon=true});
final String title;
 final bool visableArw,visableicon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: visableArw,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(Assets.imagesArrowBack),
          ),
        ),
        Text(title,style:AppStyle.bold19),

        Visibility(
          visible: visableicon,
            child: const CustomNotifcation()),
      ],
    );
  }
}



