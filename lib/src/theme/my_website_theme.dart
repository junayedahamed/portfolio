import 'package:flutter/material.dart';

class MyWebsiteTheme {
  // MyWebsiteTheme instance = MyWebsiteTheme();
  ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.grey,
      brightness: Brightness.light,
      shadow: Colors.grey.shade300,
    ),
    primaryTextTheme: TextTheme(bodySmall: TextStyle(color: Colors.black)),
  );
  ThemeData darktTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
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
  ThemeData get light => lightTheme;
  ThemeData get dark => darktTheme;
}
