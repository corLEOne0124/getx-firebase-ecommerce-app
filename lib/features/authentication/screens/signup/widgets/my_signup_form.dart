import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:getx_ecommerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_conditions_checkbox.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: MySizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.lastName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.username,
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(
                Iconsax.direct,
              ),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.phoneNo,
              prefixIcon: Icon(
                Iconsax.call,
              ),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwInputFields,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: MyTexts.password,
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),
          const TermsAndConditionsCheckbox(),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreem()),
              child: const Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
