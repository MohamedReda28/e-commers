import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/cubits/product_cubit/product_cubit_cubit.dart';
import 'package:fruts_store/core/repos/product_repo/product_repo.dart';
import 'package:fruts_store/core/services/services/git_it_Service.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/homeViewBody.dart';


class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider (
      create: (context) => ProductCubit(
       getIt<ProductRepo>(),
      ),
        child: HomeViewBody());
  }
}




