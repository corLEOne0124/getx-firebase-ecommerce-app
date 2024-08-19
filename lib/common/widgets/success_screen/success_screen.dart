import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/styles/spacing_styles.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/constants/text_strings.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.onPressed});
  final String image, title, subTitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                width: MyHelperFunctions.screenWidth() * 0.6,
                image: AssetImage(image),
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text(MyTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
