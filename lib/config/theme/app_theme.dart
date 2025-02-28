import 'package:flutter/material.dart';

const themeColors = <Color>[
    Colors.blue,
    Colors.green,
    Colors.greenAccent,
    Colors.amber
  ];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0,
            'Color index must be greater than or equal to 0'),
        assert(selectedColor < themeColors.length);

  ThemeData getThemeData() =>
      ThemeData(colorSchemeSeed: themeColors[selectedColor]);
}
