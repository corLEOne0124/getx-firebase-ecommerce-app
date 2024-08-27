import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:getx_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:getx_ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the samee type of device that you use'),
              const SizedBox(height: MySizes.spaceBtwItems),
              const OverallProductRating(),
              const MyRatingBarIndicator(rating: 3.5),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
