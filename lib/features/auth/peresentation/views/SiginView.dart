import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/Home/peresntation/views/homeView.dart';
import 'package:fruts_store/features/auth/peresentation/views/widghts/SiginViewBoby.dart';

import '../../../../core/Widghts/BuildAppBarCustom.dart';
import '../../../../core/Widghts/CustomProgressHUD.dart';
import '../../../../core/helpes_function/BuildSnakBar.dart';
import '../../../../core/services/services/git_it_Service.dart';
import '../../domain/repos/Auth Repo.dart';
import '../cubits/Signin_Cubit/cubit/signin_cubit.dart';


class SiginView extends StatelessWidget {
  const SiginView({super.key});
  static const routeName = 'SiginView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: Builder(builder: (context) {
          return BlocConsumer<SigninCubit, SigninState>(
            listener: (context, state) {
              if (state is SigninSuccess) {
                Navigator.pushNamed(context, HomeView.routeName);
                BuildSnakBar(context, 'تم تسجيل الدخول');
              }
              if (state is SigninFailure) {
                BuildSnakBar(context, state.message);
              }
            },
            builder: (context, state) => CustoProgressHUD(
             isLoading: state is SigninLoading ? true:false,
              child: SiginVeiwBody(),
            ),
          );
        }),
      ),
    );
  }
}

