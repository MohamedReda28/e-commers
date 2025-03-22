import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/helpes_function/getUser.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';

import '../uitels/app_images.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: AppStyle.bold19,
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SvgPicture.asset(Assets.imagesArrowBack),
      ),
    ),
    leadingWidth: 35,
  );
}
