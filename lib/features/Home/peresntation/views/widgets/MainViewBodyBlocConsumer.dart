import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/helpes_function/BuildSnakBar.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cubit/cart_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/mainViewBody.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({
    super.key,
    required this.currintindex,
  });

  final int currintindex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartCubitState>(
      listener: (context, state) {
        if (state is CartProductAdd) {
          return BuildSnakBar(context, "تمت العمليه بنجاح");
        }
      },
      child:MainviewBody(currintindex: currintindex),

    );
  }
}
