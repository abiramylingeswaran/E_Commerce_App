import 'package:flutter/material.dart';

class ElevatedButtonTheme {
  const ElevatedButtonTheme._();

  static final ButtonStyle light = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  static final ButtonStyle dark = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    foregroundColor: Colors.black,
    backgroundColor: Colors.grey[800],
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );
}
