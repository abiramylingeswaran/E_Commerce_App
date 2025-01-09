import 'package:flutter/material.dart';

class InputDecorationThemes {
  const InputDecorationThemes._();

  static final light = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blue),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blue),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blueAccent, width: 2),
    ),
    hintStyle: TextStyle(color: Colors.grey),
    labelStyle: TextStyle(color: Colors.blue),
  );

  static final dark = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    hintStyle: TextStyle(color: Colors.grey[400]),
    labelStyle: TextStyle(color: Colors.white),
  );
}
