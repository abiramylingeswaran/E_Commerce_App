import 'package:flutter/material.dart';

class AppbarTheme {
  AppbarTheme._();


  static  const lighttheme= AppBarTheme(
    
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent, 
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
  static  const darktheme= AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
   
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

}