import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/auth/peresentation/views/widghts/SignupViewBody.dart';
import '../../../../core/Widghts/BuildAppBarCustom.dart';
import '../../../../core/Widghts/CustomProgressHUD.dart';
import '../../../../core/helpes_function/BuildSnakBar.dart';
import '../../../../core/services/services/git_it_Service.dart';
import '../../domain/repos/Auth Repo.dart';
import '../cubits/SignUp_Cubite/signup_cubit_cubit.dart';
import '../cubits/Signin_Cubit/signin_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: Builder(
            //دا عشان يحل مشكله context لان بدونه هيحصل مشكله لان context المتاح ميعرفش SignCubite عشان جاي بعده
            builder: (context) {
          return BlocConsumer<SignupCubit, SignupState>(
            listener: (context, state) {
              if (state is SignupSuccess) {
                BuildSnakBar(context, 'تم انشاء حساب');
              }
              if (state is SignupFailure) {
                BuildSnakBar(context, state.message);
              }
            },
            builder: (context, state) => CustoProgressHUD(
              isLoading: state is SigninLoading ? true : false,
              child: SignupViewBody(),
            ),
          );
        }),
      ),
    );
  }
}
