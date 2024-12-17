import 'package:flutter/material.dart';

import 'Widghts/OnBordViewBody.dart';

class OnBordView extends StatelessWidget {
  const OnBordView({super.key});
  static const routeName = 'OnBordView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBordViewBody()),
    );
  }
}
