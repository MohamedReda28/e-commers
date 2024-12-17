import 'package:flutter/material.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/HomeViewBody.dart';

import 'widgets/CustomBottonNavigationBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'homeView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: Custombottonnavigationbar(),
      body:  SafeArea(child: Homeviewbody()),
    );
  }
}
