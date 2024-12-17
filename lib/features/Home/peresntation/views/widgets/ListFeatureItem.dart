import 'package:flutter/material.dart';

import 'feature_item.dart';

class ListfeatureitemFeature extends StatelessWidget {
  const ListfeatureitemFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //حددنا الارتفاع من خلال الذهاب الي child وشفت هل انا محدد الارتفاع بشكل ما؟
      //لما رحت لقيت عامل aspctratio واخد الارتفاع نسبه من العرض
      //رحت ل listviewوحططها في aspectratio وخد نفس النسبه
      aspectRatio: 342 / 158,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return FeatureItem();
          }),
    );
//دي طريقه بستخدها لما يكون عندي عدد item محدود
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return FeatureItem();
        }),
      ),
    );
  }
}
