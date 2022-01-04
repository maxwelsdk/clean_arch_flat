import 'package:dribbble/clean_arch_no_entity/application/data/user_request.dart';
import 'package:dribbble/clean_arch_no_entity/application/data/user_response.dart';
import 'package:dribbble/clean_arch_no_entity/application/use_cases/register_user.dart';
import 'package:dribbble/clean_arch_no_entity/application/use_cases/register_user_remote.dart';

class RegisterUserInteractor implements RegisterUser {
  final RegisterUserRemote _registerUserRemote;

  RegisterUserInteractor(this._registerUserRemote);

  @override
  Future<UserResponse> createUser(UserRequest userRequest) async {
    return await _registerUserRemote.createUser(userRequest);
  }
}
