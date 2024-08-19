import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_circular_container.dart';
import 'package:getx_ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/controllers/home_controller.dart';

class MyPromoSlider extends StatelessWidget {
  const MyPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.carouselCurrentIndex(index),
          ),
          items: banners.map((url) => MyRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                MyCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? MyColors.primary
                      : MyColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
