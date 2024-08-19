import 'package:flutter/material.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/appbar_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/chip_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/text_field_theme.dart';
import 'package:getx_ecommerce/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MyColors.grey,
    brightness: Brightness.light,
    primaryColor: MyColors.primary,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    scaffoldBackgroundColor: MyColors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MyColors.grey,
    brightness: Brightness.dark,
    primaryColor: MyColors.primary,
    textTheme: MyTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    scaffoldBackgroundColor: MyColors.black,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}
