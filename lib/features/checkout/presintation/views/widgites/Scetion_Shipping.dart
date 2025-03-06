import 'package:flutter/material.dart';
import 'Shipping_Item.dart';

class ScetionShipping extends StatefulWidget {
  const ScetionShipping({super.key});

  @override
  State<ScetionShipping> createState() => _ScetionShippingState();
}

class _ScetionShippingState extends State<ScetionShipping> {
   int selectindex=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        SizedBox(height: 33,),
        ShippingItem(
          isselected: selectindex==1,
          title: 'الدفع عند الاستلام', subtitle: 'التسليم من المكان', price: '40 جنيه',
          ontap: () {
            selectindex =1;
            setState(() {
            });
          },),
        SizedBox(height: 16,),
        ShippingItem(
          ontap: (){
            selectindex =2;
            setState(() {
            });
          },
          isselected: selectindex==2,
          title: 'الدفع اونلاين', subtitle: 'يرجي تحديد طريقه الدفع', price: 'مجاني',
        ),

      ],
    );
  }
}