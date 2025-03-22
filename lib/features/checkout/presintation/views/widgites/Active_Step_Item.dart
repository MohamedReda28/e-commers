import 'package:flutter/material.dart';

import '../../../../../core/uitels/App_Color.dart';
import '../../../../../core/uitels/App_TextStyle.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColor.kPrimaryColor,
          child: FittedBox(
              child: Icon(
            Icons.check,
            size: 18,
            color: Colors.white,
          )),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: AppStyle.bold13.copyWith(
            color: AppColor.kPrimaryColor,
          ),
        )
      ],
    );
  }
}
