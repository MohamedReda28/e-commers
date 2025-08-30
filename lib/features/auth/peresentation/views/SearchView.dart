import 'package:flutter/material.dart';
import 'package:fruts_store/core/Widghts/BuildAppBarCustom.dart';
import 'package:fruts_store/features/auth/peresentation/views/widghts/SearchviewBody.dart';


class Searchview extends StatelessWidget {
  const Searchview({super.key});
  static const routeName = 'Searchview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "البحث"),
      body:Searchviewbody(),
    );
  }
}
