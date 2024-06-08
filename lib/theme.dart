import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryColor = Colors.teal;
  static final Color secondaryColor = Color.fromARGB(255, 35, 225, 190);
  static final Color accentColor = Colors.lightBlue;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: primaryColor, fontSize: 24, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(color: Colors.black87, fontSize: 16),
      bodyText2: TextStyle(color: Colors.black54, fontSize: 14),
    ),
    iconTheme: IconThemeData(color: primaryColor),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[850],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
    ),
    cardTheme: CardTheme(
      color: Colors.grey[800],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(color: Colors.white, fontSize: 16),
      bodyText2: TextStyle(color: Colors.white70, fontSize: 14),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
  );
}
