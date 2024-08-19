import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/colors.dart';
import 'package:getx_ecommerce/constants/sizes.dart';

class MyRoundedContainer extends StatelessWidget {
  const MyRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = MySizes.cardRadiusLg,
    this.showBorder = false,
    this.margin,
    this.padding,
    this.child,
    this.borderColor = MyColors.borderPrimary,
    this.backgroundColor = MyColors.white,
  });
  final double? width;
  final double? height;
  final double radius;
  final bool showBorder;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color borderColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
