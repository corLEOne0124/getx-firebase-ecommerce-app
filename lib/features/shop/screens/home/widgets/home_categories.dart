import 'package:flutter/material.dart';
import 'package:getx_ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:getx_ecommerce/constants/image_strings.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MyVerticalImageText(
            image: MyImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
