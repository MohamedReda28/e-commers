import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widghts/CustomProgressHUD.dart';
import '../../../../../core/helpes_function/BuildSnakBar.dart';
import '../../cubits/Forgetpass_Cubit/forgetpass_cubit.dart';
import 'ForgetpassViewBody.dart';


class ForgetpassViewBodyBuilder extends StatelessWidget {
  const ForgetpassViewBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetpassCubit, ForgetpassState>(
      listener: (context, state) {
        if (state is ForgetpassSuccess) {
          BuildSnakBar(context, 'الذهاب الي صندوق رسائل الايميل');
        }
        if (state is ForgetpassFaluir) {
          BuildSnakBar(context, state.messege);
        }
      },
      builder: (context, state) => CustoProgressHUD(
        isLoading: state is ForgetpassLoading ? true : false,
        child: ForgetpassViewBody(),
      ),
    );
  }
}
