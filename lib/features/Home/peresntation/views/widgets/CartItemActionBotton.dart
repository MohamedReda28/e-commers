import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';
import 'CustomCartitemactionbotton.dart';


class Cartitemactionbotton extends StatelessWidget {
  const Cartitemactionbotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCartitemactionbotton(
          icon: Icons.add,
          color: AppColor.kPrimaryColor,
          onpressed: () {  },
          colorIcon:Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('3',style: AppStyle.bold16,),
        ),
        CustomCartitemactionbotton(
          icon: Icons.remove,
          color:Color(0xFFF3F5F7),
          onpressed: () {  },
          colorIcon:Color(0xFF969899),
        ),
      ],
    );
  }
}


