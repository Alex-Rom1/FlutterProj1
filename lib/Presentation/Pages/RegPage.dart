import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';
import 'package:get/get.dart';
import 'package:package_for_flutter_proj1/package_for_flutter_proj1.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key, required this.title});

  final String title;

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  bool cantSeePass = true;
  bool cantSeePass2 = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).extension<CustomTheme>()!;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text('Создать аккаунт', style: theme.texts.bigTitle),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    CustomInputWidgetStandart(labelText: 'Фамилия'),

                    SizedBox(height: 20),

                    CustomInputWidgetStandart(labelText: 'Имя'),

                    SizedBox(height: 20),

                    CustomInputWidgetStandart(labelText: 'Отчество'),

                    SizedBox(height: 20),

                    CustomInputWidgetStandart(labelText: 'Почта'),

                    SizedBox(height: 20),

                    CustomInputWidgetPassword(labelText: 'Пароль'),

                    SizedBox(height: 20),

                    CustomInputWidgetPassword(labelText: 'Повторите пароль'),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Get.to(LogInPage(title: 'Вход'));
                  },
                  child: Text('Зарегистрироваться', style: theme.texts.title),
                  style: TextButton.styleFrom(
                    backgroundColor: theme.palette.button,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Get.to(LogInPage(title: 'Вход'));
                },
                child: Text('У меня уже есть аккаунт', style: theme.texts.textButton),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      backgroundColor: theme.palette.background,
    );
  }
}