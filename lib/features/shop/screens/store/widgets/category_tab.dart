import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:getx_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:getx_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(
            MySizes.defaultSpace,
          ),
          child: Column(
            children: [
              const MyBrandShowcase(
                images: [
                  MyImages.productImage3,
                  MyImages.productImage2,
                  MyImages.productImage1
                ],
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              MySectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              MyGridLayout(
                itemCount: 4,
                itemBuilder: (p0, p1) => const MyProductCardVertical(),
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
