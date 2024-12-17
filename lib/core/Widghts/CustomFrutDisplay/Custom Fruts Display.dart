import 'package:flutter/material.dart';
import '../../uitels/App_TextStyle.dart';
import '../../uitels/app_images.dart';
import 'RichTextforSubtitle.dart';


class CustomFrutDisplay extends StatelessWidget {
  const CustomFrutDisplay ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),child: Stack(
      children: [
        Positioned(
          top: 0,
            right: 0,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined),),),
        Positioned.fill(
          child: Column(
            children: [
              const SizedBox(height: 20,),
               //Image.asset(Assets.imagesWatermelonPng,),
              Image.asset(Assets.imagesAvocadoPNG),
              const SizedBox(height: 5,),
              ListTile(
                title: Text(
                  'بطيخ',
                  textAlign: TextAlign.right,
                  style: AppStyle.semibold13.copyWith(color: const Color(0xFF0C0D0D),),
                ),

                subtitle: const FittedBox(child: RichTextforSubtitle()),

                trailing:const CircleAvatar(

                  backgroundColor: Color(0xFF1B5E37),

                  child: Icon(Icons.add,color: Colors.white,),
                ),
              ),

            ],
          ),
        ),

       ],
           ),
    );
  }
}


