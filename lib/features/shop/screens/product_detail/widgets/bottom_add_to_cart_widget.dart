import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/icons/my_circular_icon.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.defaultSpace,
        vertical: MySizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? MyColors.darkerGrey : MyColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MySizes.cardRadiusLg),
          topRight: Radius.circular(MySizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const MyCircularIcon(
                icon: Iconsax.minus,
                backgorundColor: MyColors.darkGrey,
                width: 40,
                height: 40,
                color: MyColors.white,
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              const MyCircularIcon(
                icon: Iconsax.add,
                backgorundColor: MyColors.black,
                width: 40,
                height: 40,
                color: MyColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(MySizes.md),
              backgroundColor: MyColors.black,
              side: const BorderSide(color: MyColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
