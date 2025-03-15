import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constsns.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import '../../../domines/entitys/Order_Entity.dart';
import 'Payment_Item.dart';

class Ordersammrywidgit extends StatelessWidget {
  const Ordersammrywidgit({super.key});

  @override
  Widget build(BuildContext context) {
    return  PaymentItem(title: 'ملخص الطلب',
      child: Column(
        children:  [
          SizedBox(height: 16,),
          Row(
            children: [
              Text(
                  'المجموع الفرعي :',
                  style: AppStyle.regular13
              ),
              Spacer(),
              Text(
                '${context.read<OrderEntity>().cartList.CalculteTotlePrice()} جنيه',
                style: AppStyle.semibold16,
              )
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: const [
              Text(
                  'التوصيل  :',
                  style: AppStyle.regular13
              ),
              Spacer(),
              Text(
                '${kpriceDelivary} جنيه',
                style: AppStyle.semibold13,
              )
            ],
          ),
          Divider(height:18, thickness: .5,color: Color(0xFFCACECE),),
          Row(
            children:  [
              Text(
                  'الكلي',
                  style: AppStyle.bold16
              ),
              Spacer(),
              Text(
                '${(context.read<OrderEntity>().cartList.CalculteTotlePrice())+kpriceDelivary} جنيه',
                style: AppStyle.bold16,
              )
            ],
          ),
          SizedBox(height: 16,),



        ],
      ),
    );
  }
}
