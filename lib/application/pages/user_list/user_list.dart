import 'package:flutter/material.dart';
import 'package:ktp_project/application/pages/input_user/input_user.dart';
import 'package:ktp_project/domain/usecases/province_usecase.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KTP App'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text('Data Penduduk',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Card(
                      child: ListTile(
                        title: Text('Nama'),
                        subtitle: Text('Profesi'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {},
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.keyboard_arrow_right))
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InputPage()));
                    },
                  );
                },
              ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InputPage()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
