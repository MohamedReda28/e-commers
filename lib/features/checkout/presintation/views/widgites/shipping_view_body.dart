import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/Widghts/CustomAppbar2.dart';
import 'package:fruts_store/core/Widghts/Custom_Botton.dart';
import 'package:fruts_store/features/checkout/presintation/views/widgites/CheckoutStepsListview.dart';

import '../../../../../core/helpes_function/BuildSnakBar.dart';
import '../../../domines/entitys/Order_Entity.dart';
import 'Active_Step_Item.dart';
import 'CustombottonnavigationTapbar.dart';
import 'InActive_Step_item.dart';


class Checkout_View_Body extends StatefulWidget {
  const Checkout_View_Body({super.key});

  @override
  State<Checkout_View_Body> createState() => _Checkout_View_BodyState();
}

class _Checkout_View_BodyState extends State<Checkout_View_Body> {
  int currintindex=0;
  late PageController pageController;
  final GlobalKey<FormState> formKey=GlobalKey<FormState>();
  ValueNotifier<AutovalidateMode> valueNotifai =ValueNotifier(AutovalidateMode.disabled);

  @override
  void initState() {
    pageController =PageController();
    pageController.addListener((){
      setState(() {
        currentPageActive = pageController.page!.toInt();
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    valueNotifai.dispose();
    super.dispose();
  }
  int currentPageActive=0;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:kHorsintalPadding),
      child:
        Column(
        children: [
            const SizedBox(height: 20,),
          CustombottonnavigationTapbar(
            pageController:pageController,
            currentPageActive: currentPageActive,

           ),

            Expanded(
              child: Checkout_Steps_Listview(
                pageController: pageController,
                formKey: formKey,
                valueListenable:valueNotifai,
              ),
            ),
            CustomBotton(
                title:currentPageActive !=2 ? 'التالي':"الدفع عبر  paypal",
                ontap: (){
                  if(currentPageActive==0){
                     shippingSection_Validation(context);
                  }else if (currentPageActive==1){
                    addressSection_Validation();
                  }
            }),
            SizedBox(height: 32),
          ],
         ),
    );
  }

  void shippingSection_Validation(BuildContext context) {
    if(context.read<OrderEntity>().paywithCash !=null){
      pageController.animateToPage(currentPageActive+1,duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }else{
      BuildSnakBar(context,'اختار طريقه الدفع');
    }
  }
  
  void addressSection_Validation() {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      pageController.animateToPage(currentPageActive+1,duration: Duration(milliseconds: 300),curve: Curves.easeIn);
    }else{
      valueNotifai.value=AutovalidateMode.always;
    }
  }
}

