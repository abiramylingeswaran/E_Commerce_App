import 'package:flutter/material.dart';

class ChipTheme {
  const ChipTheme._();

  static ChipThemeData light = ChipThemeData(
    backgroundColor: Colors.grey.shade200,
    disabledColor: Colors.grey.shade400,
    selectedColor: Colors.blue.shade300,
    secondarySelectedColor: Colors.blueAccent.shade200,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    labelStyle: const TextStyle(color: Colors.black, fontSize: 14),
    secondaryLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
    brightness: Brightness.light,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 2,
    pressElevation: 4,
  );

  static ChipThemeData dark = ChipThemeData(
    backgroundColor: Colors.grey.shade800,
    disabledColor: Colors.grey.shade600,
    selectedColor: Colors.black,
    secondarySelectedColor: Colors.blueGrey,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    labelStyle: const TextStyle(color: Colors.white, fontSize: 14),
    secondaryLabelStyle: const TextStyle(color: Colors.black, fontSize: 14),
    brightness: Brightness.dark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 2,
    pressElevation: 4,
  );
}
