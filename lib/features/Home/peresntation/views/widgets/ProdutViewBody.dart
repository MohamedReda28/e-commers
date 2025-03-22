import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/Widghts/CustomAppbar2.dart';
import 'package:fruts_store/core/cubits/product_cubit/product_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/CustomTextFiledForSearch.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/ProductsGridviewBlocBuilder.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/ProdutviewResult.dart';

class ProdutViewBody extends StatefulWidget {
  const ProdutViewBody({super.key});

  @override
  State<ProdutViewBody> createState() => _ProdutViewBodyState();
}

class _ProdutViewBodyState extends State<ProdutViewBody> {
  void initState() {
    context.read<ProductCubit>().getBestSellingProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kTopPadding,
                ),
                const CustomAppbar2(
                  title: 'المنتجات',
                  visableArw: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextFiledForSearch(),
                const SizedBox(
                  height: 12,
                ),
                ProdutviewResult(
                    productleanth: context.read<ProductCubit>().productleanth),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          const ProductsGridviewBlocBuilder(),
        ],
      ),
    );
  }
}
