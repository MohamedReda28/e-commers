import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/features/checkout/domines/entitys/Order_Entity.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import 'Payment_Item.dart';

class Delevarywidgit extends StatelessWidget {
  const Delevarywidgit({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل',
      child: Row(
        children: [
          Icon(Icons.location_on_outlined),
          SizedBox(
            width: 8,
          ),
          Text(context.read<OrderEntity>().addressOrderentity.toStringg(),
              style: AppStyle.regular16.copyWith(
                color: Color(0xFF4E5556),
              )),
          Spacer(),
          Row(
            children: [
              Icon(Icons.edit),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  pageController.animateToPage(
                    pageController.page!.toInt() - 1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text('تعديل',
                    style: AppStyle.semibold13.copyWith(
                      color: Color(0xFF949D9E),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
