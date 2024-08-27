import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:getx_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:getx_ecommerce/common/widgets/icons/my_circular_icon.dart';
import 'package:getx_ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return MyCurvedEdgeWidget(
      child: Container(
        color: dark ? MyColors.darkerGrey : MyColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(MyImages.productImage5),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MyRoundedImage(
                    imageUrl: MyImages.productImage3,
                    width: 80,
                    backgroundColor: dark ? MyColors.dark : MyColors.white,
                    border: Border.all(color: MyColors.primary),
                    padding: const EdgeInsets.all(MySizes.sm),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: MySizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                ),
              ),
            ),
            const MyAppBar(
              showBackArrow: true,
              actions: [
                MyCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.orange,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
