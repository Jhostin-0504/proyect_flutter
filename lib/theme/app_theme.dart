import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.cyan;

  static final ThemeData themeData = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.cyan,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      //Text button theam
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),
      //Floating action button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0, backgroundColor: primary),
      //elevator button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.cyan, shape: const StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))))
      //input decoracion
      );
  //input decoracion

}
