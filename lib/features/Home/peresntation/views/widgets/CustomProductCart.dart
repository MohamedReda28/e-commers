import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/uitels/app_images.dart';

import '../../../../../core/uitels/App_TextStyle.dart';

class Customproductcart extends StatelessWidget {
  const Customproductcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 92,
      child:  Row(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 53,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage( "https://hfactftuiammeesnsrzg.supabase.co/storage/v1/object/public/fruits_image/images/37.jpg..jpg"
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 17,),
           Row(
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'بطيخ',
                    style: AppStyle.bold13,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '3 كم',
                    textAlign: TextAlign.right,
                    style: AppStyle.regular13.copyWith(
                      color: Color(0xFFF4A91F),
                    ),
                  ),
                ],
                    
               ),
              SvgPicture.asset(Assets.imagesDeleteIcon),
             ],
           ),
        ],
      ),
    );
  }
}
