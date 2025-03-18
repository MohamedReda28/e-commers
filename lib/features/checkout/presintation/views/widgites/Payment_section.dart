import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/checkout/presintation/maneger/addProductCubit/order_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'DelevaryWidgit.dart';
import 'OrderSammryWidgit.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
        return Column(
          children:   [
            SizedBox(height: 24,),
            Ordersammrywidgit(),
            SizedBox(height: 24,),
            Delevarywidgit(
              pageController:pageController,
            ),
          ],
        );
  }
}
