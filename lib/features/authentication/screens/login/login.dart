import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/common/styles/spacing_styles.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/my_form_divider.dart';
import 'widgets/my_login_form.dart';
import 'widgets/my_login_header.dart';
import '../../../../common/widgets/login_signup/my_social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              const MyLoginHeader(),
              const MyLoginForm(),
              MyFormDivider(
                dividerText: MyTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              const MySocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
