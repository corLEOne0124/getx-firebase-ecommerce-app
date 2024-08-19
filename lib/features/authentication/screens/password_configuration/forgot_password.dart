import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/constants/text_strings.dart';
import 'package:getx_ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            Text(
              MyTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(
                  MyTexts.submit,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
