import 'package:flutter/material.dart';
import 'package:getx_ecommerce/constants/sizes.dart';

class MySpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
    bottom: MySizes.defaultSpace,
  );
}
