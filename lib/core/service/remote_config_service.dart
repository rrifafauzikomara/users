import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  final _remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> init() async {
    //TODO: Add Init Firebase Remote Config
    throw UnimplementedError();
  }

  Map<String, dynamic> getValue(String key) {
    //TODO: Add Function to get data from Remote Config
    throw UnimplementedError();
  }
}
