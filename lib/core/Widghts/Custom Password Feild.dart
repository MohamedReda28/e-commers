import 'package:flutter/material.dart';

import 'CustomTextField.dart';

class CustomPasswordFeild extends StatefulWidget {
  CustomPasswordFeild({super.key, required this.onSaved});
  void Function(String?)? onSaved;

  @override
  State<CustomPasswordFeild> createState() => _CustomPasswordFeildState();
}

class _CustomPasswordFeildState extends State<CustomPasswordFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: widget.onSaved,
      hinttext: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      obscureText: obscureText,
      suff: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child:
            obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      ),
    );
  }
}
