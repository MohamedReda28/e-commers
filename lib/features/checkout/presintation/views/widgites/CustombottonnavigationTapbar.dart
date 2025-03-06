import 'package:flutter/material.dart';
import 'package:fruts_store/features/checkout/domines/entitys/BottonTapBarEntity.dart';

import 'NavigatTapBarItem.dart';

class CustombottonnavigationTapbar extends StatefulWidget {
  const CustombottonnavigationTapbar({super.key, required this.changed,});
  final ValueChanged<int>changed;
  @override
  State<CustombottonnavigationTapbar> createState() => _CustombottonnavigationbarState();
}

class _CustombottonnavigationbarState extends State<CustombottonnavigationTapbar> {
  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: bottonTapBarEntity.asMap().entries.map((e){
        var index=e.key;
        var entity=e.value;
        return Expanded(
          //flex: activeIndex==index ?3:2,
          child: GestureDetector(
              onTap: (){
                setState(() {
                  activeIndex=index;
                  widget.changed(index);
                });
              },
              child: NavigatTapBarItem(isActive:activeIndex==index , bottonTapBarEntity: entity,)),
        );
      }).toList(),

    );
  }
}





