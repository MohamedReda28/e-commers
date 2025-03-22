import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/checkout/domines/entitys/BottonTapBarEntity.dart';

import '../../../../../core/helpes_function/BuildSnakBar.dart';
import '../../../domines/entitys/Order_Entity.dart';
import 'NavigatTapBarItem.dart';

class CustombottonnavigationTapbar extends StatelessWidget {
  const CustombottonnavigationTapbar({
    super.key,
    required this.currentPageActive,
    required this.pageController,
  });
  //final ValueChanged<int>changed;
  final int currentPageActive;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: bottonTapBarEntity.asMap().entries.map((e) {
        var index = e.key;
        var entity = e.value;
        return Expanded(
          //flex: activeIndex==index ?3:2,
          child: GestureDetector(
              onTap: () {
                var orderentity = context.read<OrderEntity>();
                if (context.read<OrderEntity>().paywithCash != null) {
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                } else {
                  BuildSnakBar(context, 'اختار طريقه الدفع');
                }
              },
              child: NavigatTapBarItem(
                isActive: index <= currentPageActive,
                bottonTapBarEntity: entity,
              )),
        );
      }).toList(),
    );
  }
}
