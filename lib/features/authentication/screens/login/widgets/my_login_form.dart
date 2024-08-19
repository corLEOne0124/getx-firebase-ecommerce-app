import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/constants/text_strings.dart';
import 'package:getx_ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:getx_ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:getx_ecommerce/navigation_menu.dart';
import 'package:iconsax/iconsax.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MySizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  ),
                  labelText: MyTexts.email),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: MyTexts.password,
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(
                  MyTexts.rememberMe,
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(
                    MyTexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(
                  MyTexts.signIn,
                ),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(const SignupScreen()),
                child: const Text(
                  MyTexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
