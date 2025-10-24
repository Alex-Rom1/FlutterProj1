import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Data/Repository/repository.dart';
import 'package:untitled1/Data/Storage/storage.dart';
import 'package:untitled1/Presentation/app.dart';

Repository repository = Repository(dio: Dio());
Storage storage = Storage();

void main(){
  runApp(const MyApp());
}
