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
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false}) 
  : assert(selectedColor >= 0, "Selected must be greater than 0"),
  assert(selectedColor <= colorList.length, "Selected must less or equal than ${colorList.length - 1}");


  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      brightness: isDarkMode ? Brightness.dark : Brightness.light, 
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      )
    );
  }

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}