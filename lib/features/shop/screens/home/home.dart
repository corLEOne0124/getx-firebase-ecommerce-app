import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:getx_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:getx_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:getx_ecommerce/features/shop/screens/home/widgets/home_categories.dart';

import 'widgets/my_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyPrimaryHeadContainer(
              child: Column(
                children: [
                  MyHomeAppBar(),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  MySearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MySizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        MySectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: MySizes.spaceBtwItems,
                        ),
                        MyHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  const MyPromoSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  MySectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),
                  MyGridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        const MyProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
