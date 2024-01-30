import 'package:flutter/material.dart';
import 'package:ktp_project/application/core/widgets/user_detail_row.dart';
import 'package:ktp_project/application/pages/edit_user/edit_user.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KTP App'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditPage()));
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Data Penduduk',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              buildDetailRow('Nama:', 'Anjas Kurniawan'),
              buildDetailRow(
                  'Tempat, Tanggal Lahir:', 'Surakarta, 1 Januari 1987'),
              buildDetailRow('Provinsi:', 'Jawa Tengah'),
              buildDetailRow('Kabupaten/Kota:', 'Surakarta'),
              buildDetailRow('Pendidikan Terakhir:', 'S1'),
              buildDetailRow('Profesi:', 'Software Engineer'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.delete),
        ));
  }
}
