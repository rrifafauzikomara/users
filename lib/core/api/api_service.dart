import 'package:users/core/model/user_response.dart';
import 'package:users/core/service/remote_config_service.dart';

class ApiService {
  final _remoteConfigService = RemoteConfigService();

  Future<UserResponse> getUsers() async {
    try {
      final response = _remoteConfigService.getValue('users');
      return UserResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
