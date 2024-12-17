import 'package:flutter/material.dart';

import '../../../../../core/Widghts/CustomFrutDisplay/Custom Fruts Display.dart';
class BestsillingGridview extends StatelessWidget {
  const BestsillingGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 163/214,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
        ),
        itemCount: 20,
        itemBuilder: (context,index){
          return  const CustomFrutDisplay();

        }
    );
  }
}
