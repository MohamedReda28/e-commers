import 'package:flutter/material.dart';
import 'package:fruts_store/core/uitels/App_Color.dart';

import '../../../../../core/uitels/App_TextStyle.dart';
import '../../../../../core/uitels/app_images.dart';
import 'PageViewItems.dart';

class OnBord_Page_View extends StatelessWidget {
  const OnBord_Page_View({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisibilty:true,
              //(pageController.hasClients ? pageController.page!.round() : 0) ==0,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.imagesPageview1mage,
          backgroundColor: Assets.imagesPageview1background,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في ',style: AppStyle.bold23,),
              Text('HUB',style: AppStyle.bold23.copyWith(color: const Color(0xFFF4A91F))),
              Text('Fruit',style: AppStyle.bold23.copyWith(color: AppColor.kPrimaryColor)),
            ],
          ),
        ),
        const PageViewItem(
          isVisibilty:false,
             // (pageController.hasClients ? pageController.page!.round() : 0) == 0,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          image: Assets.imagesPageview2image,
          backgroundColor: Assets.imagesPageview2background,
          title:  Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: AppStyle.bold23,
          ),
        ),
      ],
    );
  }
}
