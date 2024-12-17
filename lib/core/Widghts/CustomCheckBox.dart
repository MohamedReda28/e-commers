import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';

import '../uitels/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isCheck, required this.onChecked,});
 final bool isCheck;
final ValueChanged<bool>onChecked;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        onChecked(!isCheck);
    },
      child: Transform.scale(
        scale: 1.1,
        child: AnimatedContainer(
          width: 24,
          height: 24,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: isCheck? AppColor.kPrimaryColor:Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.50, color: isCheck? Colors.transparent:const Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),duration:const Duration(milliseconds: 100),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child:isCheck? SvgPicture.asset(Assets.imagesCheckIcon,):const SizedBox(),
          ),
        ),
      ),
    );
  }
}
