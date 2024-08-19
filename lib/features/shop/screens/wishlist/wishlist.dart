import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:getx_ecommerce/common/widgets/icons/my_circular_icon.dart';
import 'package:getx_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:getx_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/screens/home/home.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MyCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            MySizes.defaultSpace,
          ),
          child: Column(
            children: [
              MyGridLayout(
                itemCount: 6,
                itemBuilder: (p0, p1) => const MyProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
