import 'package:flutter/material.dart';
import 'package:ktp_project/application/pages/input_user/input_user.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KTP App'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('User List Page'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InputPage()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
