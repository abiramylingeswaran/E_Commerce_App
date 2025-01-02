import 'package:e_commerce_app/Theme/elevatedbutton.dart';
import 'package:e_commerce_app/Theme/texttheme.dart';
import 'package:flutter/material.dart';

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
   );
    static ThemeData darkTheme = ThemeData(  
      useMaterial3: true,
     fontFamily: 'poppins',
     brightness: Brightness.dark,
     primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.black, 
    textTheme: Texttheme.dark,
    elevatedButtonTheme: Elevatedbutton.darktheme,
    );
 
 }
 
