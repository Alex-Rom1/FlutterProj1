import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';

void showLoading(BuildContext context) {
  showDialog(context: context, builder: (_) {
    var theme = Theme.of(context).extension<CustomTheme>()!;
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Center(
        child: CircularProgressIndicator(color: theme.palette.text),
      ),
    );
  });
}