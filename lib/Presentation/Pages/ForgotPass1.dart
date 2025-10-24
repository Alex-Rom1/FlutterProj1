import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';
import 'package:get/get.dart';

class ForgotPassSendPage extends StatefulWidget {
  const ForgotPassSendPage({super.key, required this.title});

  final String title;

  @override
  State<ForgotPassSendPage> createState() => _ForgotPassSendPageState();
}

class _ForgotPassSendPageState extends State<ForgotPassSendPage> {

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
              Text('Восстановить пароль', style: theme.texts.bigTitle, textAlign: TextAlign.center),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: theme.palette.secondaryBackground,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: theme.palette.secondaryBackground,
                          ),
                        ),
                        filled: true,
                        fillColor: theme.palette.secondaryBackground,
                        labelText: 'Почта',
                        labelStyle: theme.texts.hint,
                      ),
                      style: theme.texts.text,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Отправить код', style: theme.texts.title),
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
                child: Text('Я вспомнил пароль', style: theme.texts.textButton),
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