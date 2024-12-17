import 'package:flutter/material.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/features/Best_salling_frut/presentation/Views/Best%20Salling%20view.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/bestSilling_GridView.dart';
import '../../../../../core/Widghts/CustomFrutDisplay/Custom Fruts Display.dart';
import 'CustomBestSalar.dart';
import 'CustomTextFiledForSearch.dart';
import 'Custom_Home_Appbar.dart';
import 'ListFeatureItem.dart';
import 'feature_item.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Column(
            children: [
              const SizedBox(height: kTopPadding,),
              const CustomHomeAppbar(),
              const SizedBox(height: 16,),
              const CustomTextFiledForSearch(),
              const SizedBox(height: 12,),

               const ListfeatureitemFeature(),
              const SizedBox(height: 7,),
              Custombestsalar(ontap: () {

                Navigator.of(context).pushNamed(BestSallingView.routeName);
              },),
              const SizedBox(height: 8,),
            ],
           ),
          ),
          const BestsillingGridview(),



        ],
      ),
    );
  }
}
