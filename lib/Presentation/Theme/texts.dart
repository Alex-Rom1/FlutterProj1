import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/palettes.dart';

class Texts {
  final Palette palette;

  Texts({required this.palette});

  TextStyle get title => TextStyle(
    color: palette.text,
    fontSize: 18,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );

  TextStyle get text => TextStyle(
    color: palette.text,
    fontSize: 16,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle get mediumTitle => TextStyle(
    color: palette.text,
    fontSize: 32,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle get bigTitle => TextStyle(
    color: palette.text,
    fontSize: 36,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );

  TextStyle get hint => TextStyle(
    color: palette.hint,
    fontSize: 16,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle get textButton => TextStyle(
    color: palette.button,
    fontSize: 16,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle get ver => TextStyle(
    color: palette.hint,
    fontSize: 20,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle get hintSmall => TextStyle(
    color: palette.hint,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  TextStyle get link => TextStyle(
    color: palette.button,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
}