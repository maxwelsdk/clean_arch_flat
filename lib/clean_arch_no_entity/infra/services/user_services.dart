import 'package:dribbble/clean_arch_no_entity/application/data/user_request.dart';
import 'package:dribbble/clean_arch_no_entity/application/data/user_response.dart';
import 'package:dribbble/clean_arch_no_entity/application/use_cases/register_user_remote.dart';

class UserService implements RegisterUserRemote {
  @override
  Future<UserResponse> createUser(UserRequest userRequest) {
    // TODO: implement createUser
    throw UnimplementedError();
  }
}
