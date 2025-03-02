import 'package:application_widgets/config/theme/app_theme.dart';
import 'package:application_widgets/presentation/screens/home/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 0).getThemeData(),
      debugShowCheckedModeBanner: false,
      home: ScreenHome(),
    );
  }
}
