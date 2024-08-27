import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_rounded_container.dart';
import 'package:getx_ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:getx_ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:getx_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:getx_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/enums.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyRoundedContainer(
              radius: MySizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: MyColors.black,
                    ),
              ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),
            const MyProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),
        const MyProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const MyProductTitleText(title: 'Status'),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),
        Row(
          children: [
            MyCircularImage(
              image: MyImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? MyColors.white : MyColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
