import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';
import 'package:getx_ecommerce/utils/helpers/helper_functions.dart';

class MyCircularImage extends StatelessWidget {
  const MyCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = MySizes.sm,
    required this.image,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.overlayColor,
    this.isNetworkImage = false,
  });

  final double width, height, padding;
  final String image;
  final Color? backgroundColor;
  final BoxFit? fit;
  final Color? overlayColor;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? MyColors.black : MyColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
