import 'package:flutter/material.dart';

class OutlinedButtonTheme {
  const OutlinedButtonTheme._();

  static final ButtonStyle light = OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    side: BorderSide(color: Colors.blue, width: 2),
    foregroundColor: Colors.blue,
    backgroundColor: Colors.white,
  );

  static final ButtonStyle dark = OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    side: BorderSide(color: Colors.black, width: 2),
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
  );
}
