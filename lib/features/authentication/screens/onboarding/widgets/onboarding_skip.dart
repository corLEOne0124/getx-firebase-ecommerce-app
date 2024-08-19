import 'package:flutter/material.dart';
import 'package:getx_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:getx_ecommerce/utils/constants/sizes.dart';
import 'package:getx_ecommerce/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyDeviceUtils.getAppBarHeight(),
        right: MySizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: const Text('Skip'),
        ));
  }
}
