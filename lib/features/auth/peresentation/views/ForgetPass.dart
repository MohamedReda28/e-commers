import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/services/services/git_it_Service.dart';
import 'package:fruts_store/features/auth/domain/repos/Auth%20Repo.dart';
import 'package:fruts_store/features/auth/peresentation/cubits/Forgetpass_Cubit/forgetpass_cubit.dart';
import 'package:fruts_store/features/auth/peresentation/views/widghts/ForgetpassViewBodyBuilder.dart';
import '../../../../core/Widghts/BuildAppBarCustom.dart';

class ForgetpassView extends StatelessWidget {
  const ForgetpassView({super.key});
  static const routeName = 'ForgetpassView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> ForgetpassCubit(getIt<AuthRepo>()),
      child: Scaffold (
        appBar: buildAppBar(context,title: 'نسيان كلمة المرور'),
        body: ForgetpassViewBodyBuilder(),
      ),
    );
  }
}



