import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import '../../../../../core/Widghts/CustomTextField.dart';
import 'Custom_Switch_Button.dart';

class AddressPageview extends StatelessWidget {
  const AddressPageview({
    super.key,
    required this.formKey,
    required this.valueListenable,
  });
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  hinttext: 'الاسم كامل',
                  textInputType: TextInputType.name,
                  onSaved: (value) {
                    context.read<OrderEntity>().addressOrderentity!.name =
                        value;
                  }),
              SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  hinttext: 'البريد الإلكتروني',
                  textInputType: TextInputType.name,
                  onSaved: (value) {
                    context.read<OrderEntity>().addressOrderentity!.email =
                        value;
                  }),
              SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  hinttext: 'العنوان',
                  textInputType: TextInputType.name,
                  onSaved: (value) {
                    context.read<OrderEntity>().addressOrderentity!.address =
                        value;
                  }),
              SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  hinttext: 'المدينه',
                  textInputType: TextInputType.name,
                  onSaved: (value) {
                    context.read<OrderEntity>().addressOrderentity!.city =
                        value;
                  }),
              SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  hinttext: 'رقم الطابق , رقم الشقه ..',
                  textInputType: TextInputType.name,
                  onSaved: (value) {
                    context
                        .read<OrderEntity>()
                        .addressOrderentity!
                        .addressDetels = value;
                  }),
              SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  hinttext: 'رقم الهاتف',
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    context.read<OrderEntity>().addressOrderentity!.phone =
                        value;
                  }),
              SizedBox(
                height: 16,
              ),
              CustomSwitchButton(
                label: "حفظ العنوان",
                initialValue: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
