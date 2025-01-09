import 'package:flutter/material.dart';

class BottomsheetTheme {
  const BottomsheetTheme._();

  static BottomSheetThemeData light = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
  static BottomSheetThemeData dark = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
