import 'package:flutter_test/flutter_test.dart';
import 'package:untitled1/Domain/Use_cases/calc_use_case.dart';

void main(){
  group("", (){
    test("", (){
      final calculator = CalcUseCase(
        onStartLoading: (){},
        onEndLoading: (){},
      );

      final result = calculator.add(12, 2);
      expect(result, 14);
      }
    );

    test("", (){
      final calculator = CalcUseCase(
        onStartLoading: (){},
        onEndLoading: (){},
      );

      final result = calculator.subtract(12, 2);
      expect(result, 10);
    });
  });
}