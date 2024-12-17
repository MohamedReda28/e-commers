import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constsns.dart';
import '../../../../../core/Widghts/Custom Password Feild.dart';
import '../../../../../core/Widghts/CustomTextField.dart';
import '../../../../../core/Widghts/Custom_Botton.dart';
import '../../../../../core/uitels/App_Color.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import '../../../../../core/uitels/app_images.dart';
import '../../cubits/Signin_Cubit/cubit/signin_cubit.dart';
import '../SignupView.dart';
import 'Custom Driver And Text.dart';
import 'Dont Have Account Widgh.dart';
import 'SocailLogin By.dart';

class SiginVeiwBody extends StatefulWidget {
  const SiginVeiwBody({super.key});

  @override
  State<SiginVeiwBody> createState() => _SiginVeiwBodyState();
}

class _SiginVeiwBodyState extends State<SiginVeiwBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorsintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hinttext: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordFeild(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppStyle.semibold13
                        .copyWith(color: AppColor.lightPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Center(
                child: CustomBotton(
                  title: 'تسجيل دخول',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SigninCubit>()
                          .SignWithEmailAndoPassword(email, password);
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              DontHaveAccountWidgh(
                textone: 'لا تمتلك حساب؟',
                texttwo: 'قم نانشاء حساب',
                ontap: () {
                  Navigator.pushNamed(context, SignUpView.routeName);

                },
              ),
              const SizedBox(
                height: 33,
              ),
              const CustomDriverAndOr(),
              const SizedBox(
                height: 16,
              ),
              CustomLoginBy(
                ontap: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                title: 'تسجيل بواسطة جوجل',
                image: Assets.imagesGoogleIcons,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomLoginBy(
                ontap: () {},
                title: 'تسجيل بواسطة أبل',
                image: Assets.imagesAppleIcons,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomLoginBy(
                ontap: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.imagesFaceBookIcons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
