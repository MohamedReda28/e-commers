import 'package:flutter/material.dart';

import 'Widghts/BestSallingView_body.dart';

class BestSallingView extends StatelessWidget {
  const BestSallingView({super.key});
  static const String routeName = 'bestSallingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BestsallingviewBody()),
    );
  }
}
