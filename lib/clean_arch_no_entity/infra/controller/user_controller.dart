import 'package:dribbble/clean_arch_no_entity/application/data/user_request.dart';
import 'package:dribbble/clean_arch_no_entity/application/use_cases/register_user.dart';

class UserController {
  final RegisterUser _registerUser;

  UserController(this._registerUser);

  Future<void> doSomething() async {
    _registerUser.createUser(UserRequest());
  }
}
