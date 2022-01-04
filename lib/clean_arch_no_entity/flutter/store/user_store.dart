import 'package:dribbble/clean_arch_no_entity/application/use_cases/register_user_interactor.dart';
import 'package:dribbble/clean_arch_no_entity/infra/controller/user_controller.dart';
import 'package:dribbble/clean_arch_no_entity/infra/services/user_services.dart';

class UserStore {
  final UserController _userController = UserController(
    RegisterUserInteractor(
      UserService(),
    ),
  );

  Future test() async {
    _userController.doSomething();
  }
}
