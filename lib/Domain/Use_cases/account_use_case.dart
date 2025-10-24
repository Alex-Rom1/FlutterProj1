import 'package:untitled1/Data/Repository/repository.dart';
import 'package:untitled1/Domain/Use_cases/base_use_case.dart';

class AccountUseCase extends BaseUseCase {
  final Repository repository;

  AccountUseCase({
    required this.repository,
    required super.onStartLoading,
    required super.onEndLoading
  });

  Future<void> login(
  String email,
  String password,
  Function() onGood,
  Function(String) onError,
  ) async {
    try {
      onStartLoading();
      await repository.login(email, password);
      onGood();
    } on Exception catch (e) {
      onEndLoading();
      onError(getError(e));
    }
  }
}