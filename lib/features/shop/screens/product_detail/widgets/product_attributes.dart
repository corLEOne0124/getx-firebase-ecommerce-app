import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_rounded_container.dart';
import 'package:getx_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const MySectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: MySizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Price : ', smallSize: true),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MySizes.spaceBtwItems),
                          const Text('\$20'),
                        ],
                      ),
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const MyProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: MySizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: MySizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
