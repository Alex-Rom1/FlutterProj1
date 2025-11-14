import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({super.key, required this.title});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget build(BuildContext context) {
    var theme = Theme.of(context).extension<CustomTheme>()!;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: theme.palette.tretiaryBackground,
        selectedIconTheme: IconThemeData(
          color: theme.palette.button,
        ),
        selectedItemColor: theme.palette.text,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warehouse_outlined, color: theme.palette.text,), label: 'Склады'),
          BottomNavigationBarItem(icon: Icon(Icons.key_sharp, color: theme.palette.text,), label: 'Кабинеты'),
          BottomNavigationBarItem(icon: Icon(Icons.view_agenda_outlined, color: theme.palette.text,), label: 'Карточки'),
          BottomNavigationBarItem(icon: Icon(Icons.file_present_outlined, color: theme.palette.text,), label: 'Описания'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: theme.palette.text,), label: 'Профиль'),
        ]
      ),
      backgroundColor: theme.palette.background,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text('N элементов', style: theme.texts.title),

                  SizedBox(width: 18),

                  Container(
                    width: 80,
                    height: 60,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Все', style: theme.texts.title),
                      style: TextButton.styleFrom(
                        backgroundColor: theme.palette.secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 18),

                  Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list_rounded,
                        color: theme.palette.text,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: theme.palette.secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 18),

                  Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: theme.palette.text),
                      style: IconButton.styleFrom(
                        backgroundColor: theme.palette.secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.palette.secondaryBackground,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        width: double.infinity,
                        height: 230,
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('#1', style: theme.texts.title),
                                  SizedBox(width: 14),
                                  Text(
                                    'Название склада',
                                    style: theme.texts.title,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text(
                                    'id-id-id-id-id',
                                    style: theme.texts.hintSmall,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Статус подключения', style: theme.texts.link,),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Владелец: Фамилия И.О', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('ИНН: 12345678', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('Адрес: ул. Пушкина, д. Колотушкина', style: theme.texts.hintSmall,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 22),

                      Container(
                        decoration: BoxDecoration(
                          color: theme.palette.secondaryBackground,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        width: double.infinity,
                        height: 230,
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('#1', style: theme.texts.title),
                                  SizedBox(width: 14),
                                  Text(
                                    'Название склада',
                                    style: theme.texts.title,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text(
                                    'id-id-id-id-id',
                                    style: theme.texts.hintSmall,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Статус подключения', style: theme.texts.link,),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Владелец: Фамилия И.О', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('ИНН: 12345678', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('Адрес: ул. Пушкина, д. Колотушкина', style: theme.texts.hintSmall,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 22),
                      Container(
                        decoration: BoxDecoration(
                          color: theme.palette.secondaryBackground,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        width: double.infinity,
                        height: 230,
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('#1', style: theme.texts.title),
                                  SizedBox(width: 14),
                                  Text(
                                    'Название склада',
                                    style: theme.texts.title,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text(
                                    'id-id-id-id-id',
                                    style: theme.texts.hintSmall,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Статус подключения', style: theme.texts.link,),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Владелец: Фамилия И.О', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('ИНН: 12345678', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('Адрес: ул. Пушкина, д. Колотушкина', style: theme.texts.hintSmall,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 22),

                      Container(
                        decoration: BoxDecoration(
                          color: theme.palette.secondaryBackground,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        width: double.infinity,
                        height: 230,
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('#1', style: theme.texts.title),
                                  SizedBox(width: 14),
                                  Text(
                                    'Название склада',
                                    style: theme.texts.title,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text(
                                    'id-id-id-id-id',
                                    style: theme.texts.hintSmall,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Статус подключения', style: theme.texts.link,),
                                ],
                              ),

                              SizedBox(height: 14),

                              Row(
                                children: [
                                  Text('Владелец: Фамилия И.О', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('ИНН: 12345678', style: theme.texts.hintSmall,),
                                ],
                              ),

                              SizedBox(height: 6),

                              Row(
                                children: [
                                  Text('Адрес: ул. Пушкина, д. Колотушкина', style: theme.texts.hintSmall,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
