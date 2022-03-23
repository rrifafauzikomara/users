import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';

class RemoteConfigService {
  final _remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> init() async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(milliseconds: 30000),
        minimumFetchInterval: Duration.zero,
      ));
      await _remoteConfig.fetchAndActivate();
      debugPrint('Success Init Remote Config');
    } catch (e) {
      debugPrint('Failed Init Remote Config: $e');
    }
  }

  Map<String, dynamic> getValue(String key) {
    final value = _remoteConfig.getString(key);
    final data = json.decode(value);
    final prettyString = const JsonEncoder.withIndent('  ').convert(data);
    debugPrint('Remote Config Response : $prettyString\n');
    return data;
  }
}
