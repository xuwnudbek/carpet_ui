import 'package:flutter/material.dart';

class ThemeData2 {
  static get textTheme {
    return const TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ));
  }
}
