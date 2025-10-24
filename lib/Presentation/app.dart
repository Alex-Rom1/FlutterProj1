import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Theme/palettes.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const LogInPage(title: 'Вход'),
      theme: ThemeData().copyWith(extensions: [CustomTheme(LightPalette())]),
      darkTheme: ThemeData().copyWith(extensions: [CustomTheme(BlackPalette())]),
    );
  }
}