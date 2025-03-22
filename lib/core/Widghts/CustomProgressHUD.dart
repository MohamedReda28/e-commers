import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustoProgressHUD extends StatelessWidget {
  const CustoProgressHUD(
      {super.key, required this.isLoading, required this.child});
  final bool isLoading;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: isLoading, child: child);
  }
}
