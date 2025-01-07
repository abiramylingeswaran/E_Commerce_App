import 'package:e_commerce_app/Theme/elevatedbutton.dart';
import 'package:e_commerce_app/Theme/texttheme.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/Theme/checkbox_theme.dart' as custom;
import 'package:e_commerce_app/Theme/appbar_theme.dart';
import 'package:e_commerce_app/Theme/bottomsheet_theme.dart';
import 'package:e_commerce_app/Theme/checkbox_theme.dart';
import 'package:e_commerce_app/Theme/chip_theme.dart' as customChipTheme;
import "package:e_commerce_app/Theme/elevated_button _theme.dart";
import 'package:e_commerce_app/Theme/input_decoration_theme.dart';
import 'package:e_commerce_app/Theme/outline_button_theme.dart' as customOutlinedButtonTheme;
import 'package:e_commerce_app/Theme/outline_button_theme.dart' as customOutlinedButtonTheme;
import 'package:e_commerce_app/Theme/texttheme.dart';

class ThemeApp {
  ThemeApp._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: Texttheme.light,
    elevatedButtonTheme: Elevatedbutton.lighttheme,
    appBarTheme: AppbarTheme.lighttheme,
    bottomSheetTheme: BottomsheetTheme.light,
    checkboxTheme: custom.CheckboxTheme.light,
    chipTheme: customChipTheme.ChipTheme.light,
    // inputDecorationTheme: InputDecorationThemes.light,
    //outlinedButtonTheme: customOutlinedButtonTheme.OutlinedButtonTheme.light,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: Texttheme.dark,
    elevatedButtonTheme: Elevatedbutton.darktheme,
    appBarTheme: AppbarTheme.darktheme,
    bottomSheetTheme: BottomsheetTheme.dark,
    checkboxTheme: custom.CheckboxTheme.dark,
    chipTheme: customChipTheme.ChipTheme.dark,
    //inputDecorationTheme: InputDecorationThemes. dark,
    //outlinedButtonTheme: customOutlinedButtonTheme.OutlinedButtonTheme.dark,
  );
}

