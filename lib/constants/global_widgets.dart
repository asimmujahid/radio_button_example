import 'package:flutter/material.dart';

class GlobalVariable {
  static const AppBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.5],
  );

  static const secondarycolor = Color.fromARGB(225, 153, 0, 1);
  static const backGroundColor = Colors.white;
  static const Color graybackGroundColor = Color(0xffebecee);
  static var selectNavigatBarcolor = Colors.cyan[800]!;
  static const unselectNavigatBarcolor = Colors.black87;
  
}
