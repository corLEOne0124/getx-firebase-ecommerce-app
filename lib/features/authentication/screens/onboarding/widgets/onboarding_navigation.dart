import 'package:flutter/material.dart';
import 'package:getx_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:getx_ecommerce/utils/constants/colors.dart';
import 'package:getx_ecommerce/utils/constants/sizes.dart';
import 'package:getx_ecommerce/utils/device/device_utility.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      left: MySizes.defaultSpace,
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigateClick,
        count: 3,
      ),
    );
  }
}
