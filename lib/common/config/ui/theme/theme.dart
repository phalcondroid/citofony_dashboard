import 'package:flutter/material.dart';

// LIME + INDIGO
final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Color(0xFF9C27B0), // Purple
    secondary: Color(0xFF2196F3),
    surface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black87,
  ),
  fontFamily: "Nunito",
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF9C27B0),
    secondary: Color(0xFF2196F3),
    surface: Color(0xFF1E1E1E),
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onSurface: Colors.white70,
  ),
  fontFamily: "Nunito",
);
