import 'package:flutter/material.dart';

ThemeData themeData=ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color.fromARGB(255, 69, 171, 218),
  inputDecorationTheme:InputDecorationTheme(
    border: outlineInputBorder,
    errorBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    focusedBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,
    textStyle: const TextStyle(
      fontSize: 18.0,
    ),
    disabledBackgroundColor: Colors.grey,
  ))
);

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide: BorderSide(color:Colors.grey)
);