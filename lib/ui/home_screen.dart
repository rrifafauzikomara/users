import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users/provider/user_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Consumer<UserProvider>(
          builder: (context, state, _) {
            if (state.state == ApiState.loading) {
              return const CircularProgressIndicator();
            } else if (state.state == ApiState.hasData) {
              return ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return Card(
                    child: ListTile(
                      title: Text('${user.name}'),
                      subtitle: Text('${user.address}'),
                    ),
                  );
                },
              );
            } else if (state.state == ApiState.noData) {
              return const Text('Empty');
            } else if (state.state == ApiState.error) {
              return const Text('Error');
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
