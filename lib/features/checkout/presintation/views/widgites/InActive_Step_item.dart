import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.numder, required this.title});
final String numder,title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        CircleAvatar(
          radius: 10,
          backgroundColor:Color(0xFFF2F3F3),
          child: Text(numder,style: AppStyle.semibold13,)
        ),
        SizedBox(width: 4,),
        Text(
          title,
          style: AppStyle.bold13.copyWith(
            color: Color(0xFFAAAAAA),
          ),
        )
      ],
    );
  }
}
