import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Ruslan Hajiyev',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MyColors.white)),
      subtitle: Text('corleonehaciyev@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MyColors.white)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: MyColors.white),
      ),
    );
  }
}
