import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';
import 'package:get/get.dart';

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
                        labelText: 'Фамилия',
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
                        labelText: 'Имя',
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
                        labelText: 'Отчество',
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
                        labelText: 'Повторите пароль',
                        labelStyle: theme.texts.hint,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              cantSeePass2 = !cantSeePass2;
                            });
                          },
                          icon: cantSeePass2 ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: cantSeePass2,
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
                  child: Text('Создать аккаунт', style: theme.texts.title),
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