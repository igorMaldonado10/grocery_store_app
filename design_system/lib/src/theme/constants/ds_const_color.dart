import 'package:flutter/material.dart';

/// Temos essa classe de DSConstColor como forma de facilitar o manuseio das
/// cores no desenvolvimento do projeto.

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(139, 195, 74, .1),
  100: const Color.fromRGBO(139, 195, 74, .2),
  200: const Color.fromRGBO(139, 195, 74, .3),
  300: const Color.fromRGBO(139, 195, 74, .4),
  400: const Color.fromRGBO(139, 195, 74, .5),
  500: const Color.fromRGBO(139, 195, 74, .6),
  600: const Color.fromRGBO(139, 195, 74, .7),
  700: const Color.fromRGBO(139, 195, 74, .8),
  800: const Color.fromRGBO(139, 195, 74, .9),
  900: const Color.fromRGBO(139, 195, 74, 1),
};

class DSConstColor {
  static MaterialColor customSwatchColor =
      MaterialColor(0xFF8BC34A, _swatchOpacity);

  static const Color customContrastColor = Color.fromRGBO(211, 47, 47, 1);
  static const Color primaryLight = Color.fromRGBO(220, 242, 222, 1);
  static const Color primary = Color.fromRGBO(93, 191, 90, 1);
  static const Color primaryDark = Color.fromRGBO(147, 191, 80, 1);
  static const Color primaryDarker = Color.fromRGBO(71, 89, 54, 1);

  static const Color secondary = Color.fromRGBO(217, 169, 178, 1);
  static const Color secondaryDark = Color.fromRGBO(191, 44, 31, 1);

  static const Color black = Color(0xFF000000);
  static const Color darker = Color(0xFF111111);
  static const Color dark = Color(0xFF333333);
  static const Color medium = Color(0xFF666666);
  static const Color light = Color(0xFFCCCCCC);
  static const Color lighter = Color(0xFEEEEEEE);
  static const Color white = Color(0xFFFFFFFF);
}
