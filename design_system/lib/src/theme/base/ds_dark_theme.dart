// Need global variable because _lightTheme depends on _lightColorScheme
// which is not a static member
// ignore_for_file: prefer-static-class

// Ignoring null safety for this file because color palette is configured
// in the right way,
// ignore_for_file: avoid-non-null-assertion

// Dynamic is required for Extensions
// ignore_for_file: avoid-dynamic

part of 'ds_theme.dart';

final ColorScheme _darkColorScheme = const ColorScheme.dark().copyWith(
  primary: DSConstColor.primary,
  primaryContainer: DSConstColor.primaryDark,
  secondary: DSConstColor.secondary,
  secondaryContainer: DSConstColor.secondaryDark,
  surface: DSConstColor.dark,
  background: DSConstColor.darker,
  error: Colors.red,
  onPrimary: DSConstColor.white,
  onSecondary: DSConstColor.white,
  onSurface: DSConstColor.white,
  onBackground: DSConstColor.white,
  onError: DSConstColor.white,
  brightness: Brightness.dark,
);

final ThemeData _darkThemeData = ThemeData.dark().copyWith(
  primaryColor: _darkColorScheme.primary,
  useMaterial3: true,
  // colorScheme: _lightColorScheme,
  colorScheme: _darkColorScheme,
  scaffoldBackgroundColor: _darkColorScheme.background,
  appBarTheme: AppBarTheme(
    backgroundColor: _darkColorScheme.primaryContainer,
    foregroundColor: _darkColorScheme.onSurface,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: _darkColorScheme.onPrimary,
    ),
    actionsIconTheme: IconThemeData(
      color: _darkColorScheme.onPrimary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _baseButtonStyle.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.dark;
          } else if (states.contains(MaterialState.pressed)) {
            return DSConstColor.primaryDark;
          } else if (states.contains(MaterialState.hovered)) {
            return DSConstColor.primaryDark;
          } else {
            return DSConstColor.primary;
          }
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.light;
          } else {
            return DSConstColor.lighter;
          }
        },
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: DSConstColor.primary),
    ),
  ),
  iconTheme: const IconThemeData(color: DSConstColor.lighter),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: DSConstColor.lighter),
        borderRadius: BorderRadius.circular(18)),
  ),
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.dark],
);
