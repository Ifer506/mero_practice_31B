import 'package:flutter/material.dart';

themePackage() {
  return ThemeData(
      primaryColor: Colors.amber,
      segmentedButtonTheme: const SegmentedButtonThemeData(),
      scaffoldBackgroundColor: Colors.blueGrey,
      cardColor: Colors.amber,
      hoverColor: Colors.amber,
      cardTheme: const CardTheme(
          elevation: 10, color: Colors.amber, shadowColor: Colors.blueGrey),
      buttonTheme: const ButtonThemeData(buttonColor: Colors.amber));
}
