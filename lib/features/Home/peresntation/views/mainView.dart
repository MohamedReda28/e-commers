import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cubit/cart_cubit_cubit.dart';
import 'package:fruts_store/features/Home/peresntation/views/HomeView.dart';
import 'package:fruts_store/features/Home/peresntation/views/produt_View.dart';
import 'package:fruts_store/features/Home/peresntation/views/widgets/mainViewBody.dart';
import 'CartView.dart';
import 'widgets/CustomBottonNavigationBar.dart';
import 'widgets/MainViewBodyBlocConsumer.dart';

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


    return BlocProvider(
      create: (context)=>CartCubit(),
      child: Scaffold(
        bottomNavigationBar: Custombottonnavigationbar(
          changed: (index) {
           currintindex=index;
           setState(() {});
          },
        ),
        body:  SafeArea(
          child: MainViewBodyBlocConsumer(currintindex: currintindex),
        ),
      ),
    );


  }
}



