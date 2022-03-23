import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users/core/api/api_service.dart';
import 'package:users/core/service/remote_config_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:users/provider/user_provider.dart';
import 'package:users/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await RemoteConfigService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Home';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<UserProvider>(
        create: (_) => UserProvider(apiService: ApiService()),
        child: const HomeScreen(title: title),
      ),
    );
  }
}
