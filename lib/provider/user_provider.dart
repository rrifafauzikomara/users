import 'package:flutter/material.dart';
import 'package:users/core/api/api_service.dart';
import 'package:users/core/model/user_response.dart';

enum ApiState { initial, loading, noData, hasData, error }

class UserProvider with ChangeNotifier {
  final ApiService apiService;
  late ApiState _state;

  UserProvider({required this.apiService}) {
    _state = ApiState.initial;
    _getUsers();
  }

  final _users = <DataUser>[];

  List<DataUser> get users => _users;

  ApiState get state => _state;

  Future<void> _getUsers() async {
    //TODO: Call function from Api Service and mapping it
    _state = ApiState.error;
    notifyListeners();
  }
}
