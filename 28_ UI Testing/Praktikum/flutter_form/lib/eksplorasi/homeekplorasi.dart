import 'package:flutter/material.dart';

class HomeEksplorasi extends StatefulWidget {
  const HomeEksplorasi({super.key});

  @override
  State<HomeEksplorasi> createState() => _HomeState();
}

class _HomeState extends State<HomeEksplorasi> {
  String nama = '';
  String prodi = '';
  String univ = '';
  var namaController = TextEditingController();
  var prodiController = TextEditingController();
  var univController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Mahasiswa'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                formInput(context),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ));
  }
}

Widget formInput(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Form(
            child: Column(
          children: [
            TextFormField(
              onChanged: (String value) {},
              maxLength: 50,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Nama Lengkap',
              ),
            ),
            TextFormField(
              onChanged: (String value) {},
              maxLength: 30,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Program Studi',
              ),
            ),
            TextFormField(
              onChanged: (String value) {},
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                labelText: 'Universitas',
              ),
            ),
          ],
        ))
      ],
    ),
  );
}
