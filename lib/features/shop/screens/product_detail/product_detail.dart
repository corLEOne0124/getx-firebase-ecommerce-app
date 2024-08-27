import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/shop/screens/product_detail/widgets/bottom_add_to_cart_widget.dart';
import 'package:getx_ecommerce/features/shop/screens/product_detail/widgets/product_attributes.dart';
import 'package:getx_ecommerce/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:getx_ecommerce/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:getx_ecommerce/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:getx_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: MySizes.defaultSpace,
                left: MySizes.defaultSpace,
                bottom: MySizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const RatingShareWidget(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: MySizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                  const MySectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const ReadMoreText(
                    'hello world hello world hello world hello hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' show more',
                    trimExpandedText: ' show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
