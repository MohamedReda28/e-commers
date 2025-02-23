import 'package:flutter/material.dart';
import 'package:fruts_store/features/Home/peresntation/views/HomeView.dart';
import 'package:fruts_store/features/Home/peresntation/views/produt_View.dart';
import 'CartView.dart';
import 'widgets/CustomBottonNavigationBar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routeName = 'homeView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currintindex=0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Custombottonnavigationbar(
        changed: (index) {
         currintindex=index;
         setState(() {});
        },
      ),
      body:  SafeArea(child: IndexedStack(
        index:currintindex,
        children: const [
           Homeview(),
           ProdutsView(),
          CartViews(),
        ],
      ),
      ),
    );


  }
}
