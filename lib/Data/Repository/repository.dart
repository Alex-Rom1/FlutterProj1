import 'package:dio/dio.dart';
import 'package:untitled1/Data/Models/user_model.dart';

class Repository {
  final Dio dio;
  UserModel? userModel;

  Repository({required this.dio});

  Future<void> login(String email, String password) async {
    Response response = await dio.post(
      'https://',
      data: {'email': email, 'password': password},
    );

    userModel = UserModel.fromJson(response.data);
  }
}