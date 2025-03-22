import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';
import 'package:fruts_store/features/auth/peresentation/views/SiginView.dart';
import 'package:fruts_store/features/on_bording/peresentation/Vews/Widghts/OnBord%20Page%20View.dart';
import '../../../../../constsns.dart';
import '../../../../../core/Widghts/Custom_Botton.dart';
import '../../../../../core/services/services/shardpreferance_Singlton.dart';

class OnBordViewBody extends StatefulWidget {
  const OnBordViewBody({super.key});

  @override
  State<OnBordViewBody> createState() => _OnBordViewBodyState();
}

class _OnBordViewBodyState extends State<OnBordViewBody> {
  late PageController pageController;
  var currntPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currntPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBord_Page_View(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.kPrimaryColor,
            color: currntPage == 0
                ? AppColor.kPrimaryColor.withOpacity(0.5)
                : AppColor.kPrimaryColor,
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currntPage == 1,
          child: CustomBotton(
            title: 'ابدأ الان',
            ontap: () {
              SharPref.setBool(kIsBordingViewSeen, true);
              Navigator.of(context).pushReplacementNamed(SiginView.routeName);
            },
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
