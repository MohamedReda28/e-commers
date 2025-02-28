import 'package:flutter/material.dart';
import 'package:fruts_store/features/Home/peresntation/views/CartView.dart';
import 'package:fruts_store/features/Home/peresntation/views/HomeView.dart';
import 'package:fruts_store/features/Home/peresntation/views/produt_View.dart';

class MainviewBody extends StatelessWidget {
  const MainviewBody({super.key, required this.currintindex});
  final int currintindex;
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
          index:currintindex,
          children: const [
             Homeview(),
             ProdutsView(),
             CartViews(),
          ],
        );
  }
}