import 'package:flutter/material.dart';

import '../../../domines/entites/BottonNavigtionarEntite.dart';
import 'ActiveItemNavigtionBottonBar.dart';
import 'InActiveItemNavigagtinBottonBar.dart';

class NavigatBarIem extends StatelessWidget {
  const NavigatBarIem(
      {super.key,
      required this.isActive,
      required this.bottonNavigtionarEntite});
  final bool isActive;
  final BottonNavigtionarEntite bottonNavigtionarEntite;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            image: bottonNavigtionarEntite.activeImage,
            name: bottonNavigtionarEntite.name,
          )
        : InActiveItem(image: bottonNavigtionarEntite.InActiveImsge);
  }
}
