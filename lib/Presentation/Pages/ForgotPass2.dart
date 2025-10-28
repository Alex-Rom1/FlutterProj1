import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Pages/ForgotPass3.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:get/get.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPassCodePage extends StatefulWidget {
  ForgotPassCodePage({super.key, required this.title});

  final String title;

  @override
  State<ForgotPassCodePage> createState() => _ForgotPassCodePageState();
}

class _ForgotPassCodePageState extends State<ForgotPassCodePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).extension<CustomTheme>()!;
    return Scaffold(
      backgroundColor: theme.palette.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                'Введите код из письма',
                style: theme.texts.bigTitle,
                textAlign: TextAlign.center,
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PinCodeTextField(
                      enableActiveFill: true,
                      textStyle: theme.texts.mediumTitle,
                      appContext: context,
                      length: 6,
                      pinTheme: PinTheme(
                        activeColor: theme.palette.button,
                        selectedColor: theme.palette.button,
                        inactiveColor: theme.palette.button,
                        activeFillColor: Color(0xFF0377A8),
                        selectedFillColor: theme.palette.background,
                        inactiveFillColor: theme.palette.background,
                        shape: PinCodeFieldShape.box,
                        fieldWidth: 60.67,
                        fieldHeight: 100,
                        borderRadius: BorderRadius.circular(32),
                        activeBorderWidth: 4,
                        inactiveBorderWidth: 4,
                        selectedBorderWidth: 4,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Get.to(ForgotPassChangePage(title: 'Изменение пароля'));
                  },
                  child: Text('Проверить код', style: theme.texts.title),
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
    );
  }
}
