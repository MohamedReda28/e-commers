import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';
import 'package:fruts_store/core/uitels/App_TextStyle.dart';
import 'ActiveSippingItemDot.dart';
import 'InActiveSippingItemDot.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key, required this.title, required this.subtitle, required this.price, required this.isselected, required this.ontap, });
final String title,subtitle,price;
final bool isselected;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: IntrinsicHeight(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: const EdgeInsets.only(
            top: 16,
            left: 13,
            right: 28,
            bottom: 16,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0x33D9D9D9),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isselected ? AppColor.kPrimaryColor: Colors.transparent,
              ),
                borderRadius: BorderRadius.circular(4)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isselected ? ActiveSippingItemDot():InActiveSippingItemDot(),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children:  [
                  Text(
                    title,
                    style: AppStyle.semibold13,
                  ),
                  SizedBox(height: 6,),
                  Text(
                    subtitle,
                    textAlign: TextAlign.right,
                    style: AppStyle.regular13.copyWith(color: Colors.black.withOpacity(0.5),),
                  ),
                ],
              ),
             Spacer(),
              Center(
                child: Text(
                    price,
                    style: AppStyle.bold13.copyWith(color: AppColor.kPrimaryColor)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}




