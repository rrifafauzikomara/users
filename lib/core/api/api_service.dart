import 'package:users/core/model/user_response.dart';
import 'package:users/core/service/remote_config_service.dart';

class ApiService {
  final _remoteConfigService = RemoteConfigService();

  Future<UserResponse> getUsers() async {
    //TODO: Add Function to get data from Remote Config Service
    throw UnimplementedError();
  }
}
