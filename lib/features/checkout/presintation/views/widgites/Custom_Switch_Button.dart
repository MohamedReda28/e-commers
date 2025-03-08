import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';

class CustomSwitchButton extends StatefulWidget {
  final String label;
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CustomSwitchButton({
    Key? key,
    required this.label,
    this.initialValue = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
            widget.onChanged(value);
          },
          activeColor:  Colors.white,
          activeTrackColor:  AppColor.kPrimaryColor,
          inactiveThumbColor: AppColor.kPrimaryColor ,
          inactiveTrackColor:  Colors.white,



        ),
        SizedBox(width: 10),
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),

      ],
    );
  }
}
