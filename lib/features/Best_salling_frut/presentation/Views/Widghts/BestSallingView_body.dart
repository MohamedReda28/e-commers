import 'package:flutter/material.dart';
import '../../../../../constsns.dart';
import '../../../../../core/Widghts/CustomAppbar2.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import '../../../../Home/peresntation/views/widgets/ProductsGridviewBlocBuilder.dart';
import '../../../../Home/peresntation/views/widgets/ProductsGridview.dart';

class BestsallingviewBody extends StatelessWidget {
  const BestsallingviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kTopPadding,
              ),
              CustomAppbar2(
                title: 'الأكثر مبيعًا',
              ),
              SizedBox(height: 24),
              Text('الأكثر مبيعًا', style: AppStyle.bold16),
              SizedBox(height: 8),
            ],
          ),
        ),
        // BestsillingGridview(),
      ]),
    );
  }
}
