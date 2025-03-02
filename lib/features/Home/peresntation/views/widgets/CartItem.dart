import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruts_store/core/services/services/CustomBlocObserver.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';
import 'package:fruts_store/core/uitels/app_images.dart';
import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';
import 'package:fruts_store/features/Home/peresntation/cubits/cart/cubit/cart_cubit_cubit.dart';
import '../../../../../core/Widghts/custom Url image.dart';
import '../../../../../core/uitels/App_TextStyle.dart';
import 'CartItemActionBotton.dart';

class CartItim extends StatelessWidget {
  const CartItim({super.key, required this.cartItemEntity});
final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                  width: screenWidth*0.18,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
                  child: Center(
                    child:CustomNetworkImage(imageUrl: cartItemEntity.productEntity.imageUrl!,
                    ),
                  )
              ),
              SizedBox(width: 17,),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                        Text(
                         cartItemEntity.productEntity.name,
                         style: AppStyle.bold13,
                        ),
                        Spacer(),
                        GestureDetector(onTap: (){
                          context.read<CartCubit>().RemoveCardItem(cartItemEntity);

                        },  child: SvgPicture.asset(Assets.imagesDeleteIcon),
                        ),
                     ],
                   ),
                  Text(
                   '${cartItemEntity.CalculteTotleWeight()} كم',
                   textAlign: TextAlign.right,
                   style: AppStyle.regular13.copyWith(
                     color: AppColor.secondColor,
                      ),
                     ),
                 Row(
                   children: [
                     Cartitemactionbotton(),
                      Spacer(),
                      Text('${cartItemEntity.CalculteTotlePrice()} جنيه',style: AppStyle.bold19.copyWith(
                           color: AppColor.secondColor,
                             ),
                            ),
                           ],
                         ),
                     SizedBox(height: 5,),

                   ],
                 ),
               )
            ],
          ),
        ),


      ],
    );
  }
}
