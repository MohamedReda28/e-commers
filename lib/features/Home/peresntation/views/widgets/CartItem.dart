import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';
import 'package:fruts_store/core/uitels/app_images.dart';
import '../../../../../core/Widghts/custom Url image.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import 'CartItemActionBotton.dart';

class CartItim extends StatelessWidget {
  const CartItim({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                  width: screenWidth*0.18,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
                  child: Center(
                    child:CustomNetworkImage(imageUrl: 'https://hfactftuiammeesnsrzg.supabase.co/storage/v1/object/public/fruits_image/images/37.jpg..jpg',
                    ),
                  )
              ),
              SizedBox(width: 17,),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       const Text(
                         'بطيخ',
                         style: AppStyle.bold13,
                        ),
                        Spacer(),
                        GestureDetector(onTap: (){},  child: SvgPicture.asset(Assets.imagesDeleteIcon),
                        ),
                     ],
                   ),
                  Text(
                   '3 كم',
                   textAlign: TextAlign.right,
                   style: AppStyle.regular13.copyWith(
                     color: AppColor.secondColor,
                      ),
                     ),
                 Row(
                   children: [
                     Cartitemactionbotton(),
                      Spacer(),
                      Text('60 جنيه',style: AppStyle.bold19.copyWith(
                           color: AppColor.secondColor,
                             ),
                            ),
                           ],

                         ),
                     SizedBox(height: 5,),

                   ],
                 ),
               )

            ],
          ),
        ),


      ],
    );
  }
}
