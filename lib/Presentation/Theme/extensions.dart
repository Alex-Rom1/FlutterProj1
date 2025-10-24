import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/palettes.dart';
import 'package:untitled1/Presentation/Theme/texts.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Texts texts;

  CustomTheme(this.palette) : texts = Texts(palette: palette);

  @override
  ThemeExtension<CustomTheme> copyWith(){
    return CustomTheme(palette);
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      covariant ThemeExtension<CustomTheme>? other,
      double t,
      ) {
    return this;
  }

}