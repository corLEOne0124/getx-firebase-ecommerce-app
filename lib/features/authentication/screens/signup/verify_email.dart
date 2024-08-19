import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/constants/text_strings.dart';
import 'package:getx_ecommerce/features/authentication/screens/login/login.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreem extends StatelessWidget {
  const VerifyEmailScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Image(
                width: MyHelperFunctions.screenWidth() * 0.6,
                image: const AssetImage(MyImages.deliveredEmailIllustration),
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              Text(
                MyTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text(
                MyTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: MyImages.deliveredEmailIllustration,
                          title: MyTexts.yourAccountCreatedTitle,
                          subTitle: MyTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(MyTexts.tContinue)),
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(MyTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
