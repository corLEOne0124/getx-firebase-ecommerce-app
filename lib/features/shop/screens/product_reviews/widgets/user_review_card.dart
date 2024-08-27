import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_rounded_container.dart';
import 'package:getx_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(MyImages.userProfileImage1),
                ),
                const SizedBox(width: MySizes.spaceBtwItems),
                Text('Holmes Yilmaz',
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems),
        Row(
          children: [
            const MyRatingBarIndicator(rating: 4),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text('21 Aug, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems),
        const ReadMoreText(
          'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' show more',
          trimExpandedText: ' show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),
        MyRoundedContainer(
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ruslan\'s store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('21 Aug, 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                const ReadMoreText(
                  'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' show more',
                  trimExpandedText: ' show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwSections),
      ],
    );
  }
}
