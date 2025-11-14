import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Theme/palettes.dart';
import 'package:get/get.dart';
import 'package:untitled1/Presentation/Pages/StoriesPage.dart';
import 'package:package_for_flutter_proj1/package_for_flutter_proj1.dart';
import 'package:untitled1/Presentation/Pages/MainPage.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MainPage(title: 'Главная'),
      theme: ThemeData().copyWith(extensions: [CustomTheme(LightPalette()), PackageCustomTheme(PackageLightPalette())]),
      darkTheme: ThemeData().copyWith(extensions: [CustomTheme(BlackPalette()), PackageCustomTheme(PackageBlackPalette())]),
    );
  }
}