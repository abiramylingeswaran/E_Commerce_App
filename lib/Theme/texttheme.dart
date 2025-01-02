import 'package:flutter/material.dart';

class Texttheme {
  Texttheme._();


  static TextTheme light = TextTheme(
    headlineLarge:  const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
     headlineMedium:  const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
     color: Colors.black,
  ), 
  headlineSmall:  const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
     color: Colors.black,
  ),
  titleLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
     color: Colors.black,
  ), 
  titleMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
     color: Colors.black,
  ),  
  titleSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
     color: Colors.black,
  ),
  bodyLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
     color: Colors.black,
  ),  
  bodyMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
     color: Colors.black,
  ),

bodySmall: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
   color: Colors.black,
),
  labelLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
     color: Colors.black,
  ),
  labelMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
     color: Colors.black,
  ),
  labelSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
     color: Colors.black,
  ),    
  );
    
  static TextTheme dark = TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
       color: Colors.white,
    ),
     headlineMedium:  const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  headlineSmall:  const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  titleLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  titleMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),  
  titleSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  bodyLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),
  bodyMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),  
  bodySmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),  
  labelLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),  
  labelMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),
  labelSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),  
    
  );
}
