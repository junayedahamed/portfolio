import 'package:flutter/material.dart';

class MyWebsiteTheme {
  // MyWebsiteTheme instance = MyWebsiteTheme();
  final ThemeData _lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    drawerTheme: DrawerThemeData(
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      shape: BeveledRectangleBorder(),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.grey,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.grey,
      brightness: Brightness.light,
      shadow: Colors.grey.shade300,
    ),
    primaryTextTheme: TextTheme(bodySmall: TextStyle(color: Colors.black)),
  );
  final ThemeData _darktTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    cardTheme: CardThemeData(color: Colors.black87),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      shadowColor: Colors.black,
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.dark,
      shadow: Colors.white70,
    ),
    primaryTextTheme: TextTheme(bodySmall: TextStyle(color: Colors.black)),
  );
  ThemeData get light => _lightTheme;
  ThemeData get dark => _darktTheme;
}
