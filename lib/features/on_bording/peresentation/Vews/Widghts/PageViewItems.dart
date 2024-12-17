import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constsns.dart';
import '../../../../../core/services/services/shardpreferance_Singlton.dart';
import '../../../../../core/uitels/App_TextStyle.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.subtitle,
    required this.image,
    required this.title,
    required this.backgroundColor,
    required this.isVisibilty
  });

  final String subtitle, image, backgroundColor;
  final Widget title;
  final bool isVisibilty;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundColor,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisibilty,
                child:  GestureDetector(
                  onTap: (){
                    SharPref.setBool(kIsBordingViewSeen, true);
                   // Navigator.of(context).pushReplacementNamed(SiginView.routeName);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('تخطي',style: AppStyle.regular13,),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style:AppStyle.semibold13 ,
          ),
        ),
      ],
    );
  }
}
