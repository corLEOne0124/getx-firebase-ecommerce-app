import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/brands/my_brand_card.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/containers/my_rounded_container.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class MyBrandShowcase extends StatelessWidget {
  const MyBrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      padding: const EdgeInsets.all(MySizes.md),
      child: Column(
        children: [
          const MyBrandCard(showBorder: false),
          Row(
            children: [
              ...images
                  .map((image) => brandTopProductImageWidget(image, context))
            ],
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: MyRoundedContainer(
      height: 100,
      backgroundColor: MyHelperFunctions.isDarkMode(context)
          ? MyColors.darkerGrey
          : MyColors.light,
      margin: const EdgeInsets.only(right: MySizes.sm),
      padding: const EdgeInsets.all(MySizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
