import 'package:flutter/material.dart';

abstract class Palette {
  abstract Color secondaryBackground;
  abstract Color background;
  abstract Color text;
  abstract Color hint;
  abstract Color button;
  abstract Color tretiaryBackground;
}

class BlackPalette extends Palette {
  @override
  Color background = Color(0xFF262525);

  @override
  Color secondaryBackground = Color(0xFF141414);

  @override
  Color tretiaryBackground = Color(0xFF262525);

  @override
  Color text = Color(0xFFFFFFFF);

  @override
  Color hint = Color(0xFFA1A1A1);

  @override
  Color button = Color(0xFF00B3FF);
}

class LightPalette extends Palette {
  @override
  Color background = Colors.white;

  @override
  Color secondaryBackground = Color(0xFFB3B3B3);

  @override
  Color tretiaryBackground = Color(0xFFC4C3C3);

  @override
  Color text = Color(0xFF323232);

  @override
  Color hint = Color(0xFF505050);

  @override
  Color button = Colors.cyan;
}
