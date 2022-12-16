import 'package:thaonhushop_flutter/app/core/utils/export.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.pink,
  backgroundColor: Colors.pink,
  appBarTheme: const AppBarTheme(
    color: Colors.pink,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.purple,
  backgroundColor: Colors.purple,
  appBarTheme: const AppBarTheme(
    color: Colors.purple,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
);
