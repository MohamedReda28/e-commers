import 'package:flutter/material.dart';

import '../../../../../core/Widghts/CustomTextField.dart';
import 'Custom_Switch_Button.dart';

class AddressPageview extends StatelessWidget {
  const AddressPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:   [
        SizedBox(height: 24,),
        CustomTextFormField(hinttext:   'الاسم كامل', textInputType: TextInputType.name,),
        SizedBox(height: 8,),
        CustomTextFormField(hinttext:   'البريد الإلكتروني', textInputType: TextInputType.name,),
        SizedBox(height: 8,),
        CustomTextFormField(hinttext:   'العنوان', textInputType: TextInputType.name,),
        SizedBox(height: 8,),
        CustomTextFormField(hinttext:   'المدينه', textInputType: TextInputType.name,),
        SizedBox(height: 8,),
        CustomTextFormField(hinttext:   'رقم الطابق , رقم الشقه ..', textInputType: TextInputType.name,),
        SizedBox(height: 8,),
        CustomTextFormField(hinttext:   'رقم الهاتف', textInputType: TextInputType.number),
        SizedBox(height: 16,),
        CustomSwitchButton(
          label: "حفظ العنوان",
          initialValue: false,
          onChanged: (value) {
          },
        ),

      ],
    );
  }
}
