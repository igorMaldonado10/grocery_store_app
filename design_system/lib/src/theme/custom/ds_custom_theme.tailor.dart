// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'ds_custom_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class DSCustomTheme extends ThemeExtension<DSCustomTheme> {
  const DSCustomTheme({
    required this.dsColor,
  });

  final DSColor dsColor;

  static final DSCustomTheme light = DSCustomTheme(
    dsColor: _$DSCustomTheme.dsColor[0],
  );

  static final DSCustomTheme dark = DSCustomTheme(
    dsColor: _$DSCustomTheme.dsColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  DSCustomTheme copyWith({
    DSColor? dsColor,
  }) {
    return DSCustomTheme(
      dsColor: dsColor ?? this.dsColor,
    );
  }

  @override
  DSCustomTheme lerp(covariant ThemeExtension<DSCustomTheme>? other, double t) {
    if (other is! DSCustomTheme) return this as DSCustomTheme;
    return DSCustomTheme(
      dsColor: dsColor.lerp(other.dsColor, t) as DSColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DSCustomTheme &&
            const DeepCollectionEquality().equals(dsColor, other.dsColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(dsColor),
    );
  }
}

extension DSCustomThemeBuildContextProps on BuildContext {
  DSCustomTheme get dSCustomTheme => Theme.of(this).extension<DSCustomTheme>()!;
  DSColor get dsColor => dSCustomTheme.dsColor;
}

class DSColor extends ThemeExtension<DSColor> {
  const DSColor({
    required this.exampleColor,
  });

  final Color exampleColor;

  static final DSColor light = DSColor(
    exampleColor: _$DSColor.example[0],
  );

  static final DSColor dark = DSColor(
    exampleColor: _$DSColor.example[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  DSColor copyWith({
    Color? exampleColor,
  }) {
    return DSColor(
      exampleColor: exampleColor ?? this.exampleColor,
    );
  }

  @override
  DSColor lerp(covariant ThemeExtension<DSColor>? other, double t) {
    if (other is! DSColor) return this as DSColor;
    return DSColor(
      exampleColor: Color.lerp(exampleColor, other.exampleColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DSColor &&
            const DeepCollectionEquality()
                .equals(exampleColor, other.exampleColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(exampleColor),
    );
  }
}
