import 'package:flutter/material.dart';

abstract class Palette {
  abstract Color secondaryBackground;
  abstract Color background;
  abstract Color text;
  abstract Color hint;
  abstract Color button;
}

class BlackPalette extends Palette {
  @override
  Color background = Color(0xFF282828);

  @override
  Color secondaryBackground = Color(0xFF202020);

  @override
  Color text = Color(0xFFE5E5E5);

  @override
  Color hint = Color(0xFF808080);

  @override
  Color button = Colors.cyan;
}

class LightPalette extends Palette {
  @override
  Color background = Colors.white;

  @override
  Color secondaryBackground = Color(0xFFB3B3B3);

  @override
  Color text = Color(0xFF323232);

  @override
  Color hint = Color(0xFF505050);

  @override
  Color button = Colors.cyan;
}
