import 'package:flutter/material.dart';
import 'package:untitled1/Presentation/Theme/extensions.dart';
import 'package:get/get.dart';
import 'package:untitled1/Presentation/Pages/LogInPage.dart';


class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key, required this.title});

  final String title;

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  List<Image> stories = [
    Image.asset('assets/images/stories0.jpg', fit: BoxFit.fill,),
    Image.asset('assets/images/stories1.jpg', fit: BoxFit.fill,),
    Image.asset('assets/images/stories2.jpg', fit: BoxFit.fill,),
    Image.asset('assets/images/stories3.jpg', fit: BoxFit.fill,),
  ];

  Widget build(BuildContext context) {
    var theme = Theme.of(context).extension<CustomTheme>()!;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: stories.length,
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: stories[index],
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 62,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: theme.palette.button,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.to(const LogInPage(title: 'Логин'));
                      },
                      icon: const Icon(Icons.close),
                      iconSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
