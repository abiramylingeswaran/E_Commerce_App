import 'package:flutter/material.dart';

class CheckboxTheme {
   const CheckboxTheme._();

   static CheckboxThemeData light = CheckboxThemeData(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(8),
     ),
     checkColor:WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.grey;
          }
          return Colors.white;
        },
     ),
        fillColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.blue;
            }
            return Colors.white;
          },
        ),

      );
     

 static CheckboxThemeData dark = CheckboxThemeData(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(8),
     ),
     checkColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.grey;
          }
          return Colors.white;
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.black;
          }
          return Colors.white;
        },
      ),
    );
}