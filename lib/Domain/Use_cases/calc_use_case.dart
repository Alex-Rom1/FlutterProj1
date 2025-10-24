import 'package:untitled1/Domain/Use_cases/base_use_case.dart';

class CalcUseCase extends BaseUseCase {
  CalcUseCase({required super.onStartLoading, required super.onEndLoading});

  int add(int a, int b){
    return a + b;
  }

  int subtract(int a, int b){
    return a - b;
  }
}