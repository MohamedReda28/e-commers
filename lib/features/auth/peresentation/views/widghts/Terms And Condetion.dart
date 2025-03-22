import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/Widghts/CustomCheckBox.dart';
import '../../../../../core/uitels/App_Color.dart';
import '../../../../../core/uitels/App_TextStyle.dart';

class TermsAndCondetion extends StatefulWidget {
  const TermsAndCondetion({super.key, required this.changed});
  final ValueChanged<bool> changed;
  @override
  State<TermsAndCondetion> createState() => _TermsAndCondetionState();
}

class _TermsAndCondetionState extends State<TermsAndCondetion> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isCheck: isCheck,
          onChecked: (value) {
            isCheck = value;
            widget.changed(value);
            setState(() {});
          },
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: AppStyle.semibold13.copyWith(
                      color: Color(0xFF949D9E),
                    )),
                TextSpan(
                    text: 'الشروط والأحكام',
                    style: AppStyle.semibold13
                        .copyWith(color: AppColor.lightPrimaryColor)),
                TextSpan(
                    text: ' ',
                    style: AppStyle.semibold13.copyWith(
                      color: Color(0xFF949D9E),
                    )),
                TextSpan(
                    text: 'الخاصة',
                    style: AppStyle.semibold13
                        .copyWith(color: AppColor.lightPrimaryColor)),
                TextSpan(
                    text: ' ',
                    style: AppStyle.semibold13.copyWith(
                      color: Color(0xFF949D9E),
                    )),
                TextSpan(
                    text: 'بنا',
                    style: AppStyle.semibold13
                        .copyWith(color: AppColor.lightPrimaryColor)),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
