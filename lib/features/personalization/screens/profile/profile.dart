import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:getx_ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:getx_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                      image: MyImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
              const MySectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              ProfileMenu(
                  title: 'Name', value: 'Ruslan Hajiyev', onPressed: () {}),
              ProfileMenu(title: 'Username', value: 'Johan', onPressed: () {}),
              const SizedBox(height: MySizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
              ProfileMenu(
                title: 'User ID',
                value: '24242424',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                  title: 'E-mail',
                  value: 'corleonehaciyev@gmail.com',
                  onPressed: () {}),
              ProfileMenu(
                  title: 'Phone Number', value: '055555555', onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(
                  title: 'Date of Birth',
                  value: '24 Jan, 2005',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
