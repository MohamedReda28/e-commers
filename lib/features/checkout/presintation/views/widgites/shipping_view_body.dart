import 'package:flutter/material.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/Widghts/CustomAppbar2.dart';
import 'package:fruts_store/core/Widghts/Custom_Botton.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/CheckoutStepsListview.dart';

import 'Active_Step_Item.dart';
import 'CustombottonnavigationTapbar.dart';
import 'InActive_Step_item.dart';


class Checkout_View_Body extends StatefulWidget {
  const Checkout_View_Body({super.key});

  @override
  State<Checkout_View_Body> createState() => _Checkout_View_BodyState();
}

class _Checkout_View_BodyState extends State<Checkout_View_Body> {
  int currintindex=0;
  late PageController pageController;

  @override
  void initState() {
    pageController =PageController();
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:kHorsintalPadding),
      child:
        Column(
        children: [
            const SizedBox(height: 20,),
          CustombottonnavigationTapbar(
            changed: (int index) {
              currintindex=index;
              setState(() {});
            },),

            Expanded(
              child: Checkout_Steps_Listview(pageController: pageController),
            ),
            CustomBotton(title: 'التالي',ontap: (){}),
            SizedBox(height: 32),
          ],
         ),
    );
  }
}

