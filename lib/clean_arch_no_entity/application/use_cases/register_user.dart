import 'package:dribbble/clean_arch_no_entity/application/data/user_request.dart';
import 'package:dribbble/clean_arch_no_entity/application/data/user_response.dart';

abstract class RegisterUser {
  Future<UserResponse> createUser(UserRequest userRequest);
}
