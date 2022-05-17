import 'package:flutter/material.dart';

const _primarySwatch = Colors.cyan;

const _inputBorderColor =  Color.fromARGB(255, 195, 188, 255);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: _primarySwatch,
    inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
              color:  Color.fromARGB(255, 195, 188, 255),
            ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: _inputBorderColor), borderRadius: BorderRadius.circular(10)),
  ),
);