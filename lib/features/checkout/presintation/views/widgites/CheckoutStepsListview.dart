import 'package:flutter/material.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/Scetion_Shipping.dart';

import 'Address_PageView.dart';

class Checkout_Steps_Listview extends StatelessWidget {
   Checkout_Steps_Listview({ super.key,required this.pageController,});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: getPage.length,
        itemBuilder:(context,index){
          return getPage[index];
        }
      ),
    );
  }
  List<Widget>getPage = [
    ScetionShipping(),
    AddressPageview(),
    Text('data'),
    Text('data'),

  ];
}
