import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Pages/RegPage.dart';
import 'package:get/get.dart';
import 'package:untitled1/Presentation/Pages/ForgotPass1.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key, required this.title});

  final String title;

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool cantSeePass = true;

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
              Text('Вход', style: theme.texts.bigTitle),
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

                    SizedBox(height: 20),

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
                        labelText: 'Пароль',
                        labelStyle: theme.texts.hint,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              cantSeePass = !cantSeePass;
                            });
                          },
                          icon: cantSeePass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: cantSeePass,
                      style: theme.texts.text,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.to(ForgotPassSendPage(title: 'Восстановление пароля1'));
                          },
                          child: Text(
                            'Забыли пароль?',
                            style: theme.texts.textButton,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text('beta|0.0.0', style: theme.texts.ver),
              SizedBox(height: 10),

              Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Войти', style: theme.texts.title),
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
                  Get.to(RegPage(title: 'Регистрация'));
                },
                child: Text('Создать новый аккаунт', style: theme.texts.textButton),
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
