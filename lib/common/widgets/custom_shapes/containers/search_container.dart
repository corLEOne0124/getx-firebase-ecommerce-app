import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/device/device_utility.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(
      horizontal: MySizes.defaultSpace,
    ),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: MyDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(MySizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? MyColors.dark
                  : MyColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(MySizes.cardRadiusLg),
          border: showBorder ? Border.all(color: MyColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: MyColors.darkerGrey,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
