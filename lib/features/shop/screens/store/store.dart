import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:getx_ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:getx_ecommerce/common/widgets/brands/my_brand_card.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:getx_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:getx_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            MyCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? MyColors.black : MyColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(
                  MySizes.defaultSpace,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    const MySearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: MySizes.spaceBtwSections,
                    ),
                    MySectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: MySizes.spaceBtwItems / 1.5,
                    ),
                    MyGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (context, index) {
                        return const MyBrandCard(
                          showBorder: false,
                        );
                      },
                    ),
                  ],
                ),
              ),
              bottom: const MyTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
