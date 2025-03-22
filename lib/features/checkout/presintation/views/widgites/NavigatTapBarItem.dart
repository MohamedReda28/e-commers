import 'package:flutter/material.dart';
import '../../../domines/entitys/BottonTapBarEntity.dart';
import 'Active_Step_Item.dart';
import 'InActive_Step_item.dart';

class NavigatTapBarItem extends StatelessWidget {
  const NavigatTapBarItem(
      {super.key, required this.isActive, required this.bottonTapBarEntity});
  final bool isActive;
  final BottonTapBarEntity bottonTapBarEntity;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveStepItem(
        title: bottonTapBarEntity.title,
      ),
      secondChild: InActiveStepItem(
          numder: bottonTapBarEntity.InActivenum,
          title: bottonTapBarEntity.title),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 300),
    );
  }
}
