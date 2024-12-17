import 'package:flutter/material.dart';

import '../../../domines/entites/BottonNavigtionarEntite.dart';
import 'SelectNavigatBarIem.dart';

class Custombottonnavigationbar extends StatefulWidget {
  const Custombottonnavigationbar({super.key});

  @override
  State<Custombottonnavigationbar> createState() => _CustombottonnavigationbarState();
}

class _CustombottonnavigationbarState extends State<Custombottonnavigationbar> {
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ), child: Row(
      children: bottomNavigtionarEntites.asMap().entries.map((e){
        var index=e.key;
        var entity=e.value;
       return Expanded(
         flex: activeIndex==index ?3:2,
         child: GestureDetector(
           onTap: (){
             setState(() {
               activeIndex=index;
             });
           },
             child: NavigatBarIem(isActive:activeIndex==index , bottonNavigtionarEntite: entity,)),
       );
      }).toList(),
    ),
    );
  }
}





