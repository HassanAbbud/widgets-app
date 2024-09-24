import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.orange,
  Colors.red,
  Colors.blue,
  Colors.purple,
  Colors.teal,
  Colors.pink,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) 
  : assert(selectedColor >= 0, "Selected must be greater than 0"),
  assert(selectedColor <= colorList.length, "Selected must less or equal than ${colorList.length - 1}");


  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      brightness: Brightness.light, 
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      )
    );
  }
}