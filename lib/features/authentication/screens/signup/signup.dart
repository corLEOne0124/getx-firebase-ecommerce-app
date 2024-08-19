import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/widgets/login_signup/my_form_divider.dart';
import 'package:getx_ecommerce/common/widgets/login_signup/my_social_buttons.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/constants/text_strings.dart';

import 'widgets/my_signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              const MySignupForm(),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              MyFormDivider(dividerText: MyTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
