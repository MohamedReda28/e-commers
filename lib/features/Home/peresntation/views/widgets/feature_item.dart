import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruts_store/core/uitels/App_TextStyle.dart';
import 'package:fruts_store/core/uitels/app_images.dart';

import 'FeatureItembotton.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        width: width,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: width * .4,
                child: SvgPicture.asset(
                  Assets.imagesPageview2image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: width * .5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(Assets.imagesFeatureItemBackground),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'عروض العيد',
                        style: AppStyle.regular13.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'خصم 25%',
                        style: AppStyle.bold19.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      FeatureItembotton(
                        ontap: () {},
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
