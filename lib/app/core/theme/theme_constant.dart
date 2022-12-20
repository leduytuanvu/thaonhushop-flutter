import 'package:thaonhushop_flutter/app/core/utils/export.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  backgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      fontSize: 10.sp,
      color: Colors.black,
      fontFamily: GoogleFonts.montserrat().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      color: Colors.black,
      fontFamily: GoogleFonts.montserrat().fontFamily,
    ),
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
