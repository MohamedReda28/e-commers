import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/cubits/product_cubit/product_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/ProductsGridview.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/Widghts/customErrorWidght.dart';
import '../../../../../core/helpes_function/git_dammy_Product.dart';

class ProductsGridviewBlocBuilder extends StatelessWidget {
  const ProductsGridviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      if (state is ProductCubitSuccess) {
        return ProductsGridview(products: state.products);
      } else if (state is ProductCubitFailure) {
        return Customerrorwidght(
          text: state.message,
        );
      } else {
        return Skeletonizer.sliver(
          enabled: true,
          child: ProductsGridview(
            products: getDomyProducts(),
          ),
        );
      }
    });
  }
}
