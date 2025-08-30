import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/core/services/services/CustomBlocObserver.dart';
import 'package:fruts_store/features/auth/peresentation/cubits/Forgetpass_Cubit/forgetpass_cubit.dart';

import '../../../../../constsns.dart';
import '../../../../../core/Widghts/CustomTextField.dart';
import '../../../../../core/Widghts/Custom_Botton.dart';
import '../../../../../core/uitels/App_TextStyle.dart';

class ForgetpassViewBody extends StatefulWidget {
   ForgetpassViewBody({super.key});

  @override
  State<ForgetpassViewBody> createState() => _ForgetpassViewBodyState();
}

class _ForgetpassViewBodyState extends State<ForgetpassViewBody> {
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

   AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

 late String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorsintalPadding),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
              textAlign: TextAlign.right,
              style: AppStyle.semibold16.copyWith(
                color: Color(0xFF616A6B),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFormField(
              onSaved: (value) {
                email = value!;
              },
              hinttext: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomBotton(title: 'نسيت كلمة المرور', ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<ForgetpassCubit>().sendPasswordResetEmail(email: email);
              } else {
                setState(() {
                  autoValidateMode = AutovalidateMode.always;
                });
              }
            },)
          ],
        ),
      ),
    );
  }
}
