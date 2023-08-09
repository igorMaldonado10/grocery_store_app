// Need global variable because _lightTheme depends on _lightColorScheme
// which is not a static member
// ignore_for_file: prefer-static-class

// Ignoring null safety for this file because color palette is configured
// in the right way,
// ignore_for_file: avoid-non-null-assertion

// Dynamic is required for Extensions
// ignore_for_file: avoid-dynamic

part of 'ds_theme.dart';

final ColorScheme _lightColorScheme = const ColorScheme.light().copyWith(
  primary: DSConstColor.primary,
  primaryContainer: DSConstColor.primary,
  secondary: DSConstColor.secondary,
  secondaryContainer: DSConstColor.secondary,
  surface: DSConstColor.white,
  background: DSConstColor.lighter,
  error: Colors.red,
  onPrimary: DSConstColor.white,
  onSecondary: DSConstColor.white,
  onSurface: DSConstColor.dark,
  onBackground: DSConstColor.dark,
  onError: DSConstColor.white,
  brightness: Brightness.light,
);

final ThemeData _lightThemeData = ThemeData.light().copyWith(
  primaryColor: _lightColorScheme.primary,
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  scaffoldBackgroundColor: _lightColorScheme.background,
  appBarTheme: AppBarTheme(
    backgroundColor: _lightColorScheme.primaryContainer,
    foregroundColor: _lightColorScheme.onPrimary,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: _lightColorScheme.onPrimary,
    ),
    actionsIconTheme: IconThemeData(
      color: _lightColorScheme.onPrimary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _baseButtonStyle.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.light;
          } else if (states.contains(MaterialState.pressed)) {
            return DSConstColor.primaryLight;
          } else if (states.contains(MaterialState.hovered)) {
            return DSConstColor.primaryLight;
          } else {
            return DSConstColor.primary;
          }
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.medium;
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
  iconTheme: const IconThemeData(color: DSConstColor.darker),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: DSConstColor.darker),
        borderRadius: BorderRadius.circular(18)),
  ),
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.light],
);
