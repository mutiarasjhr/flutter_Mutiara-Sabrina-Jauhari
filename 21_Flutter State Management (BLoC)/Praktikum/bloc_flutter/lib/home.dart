import 'package:bloc_flutter/bloc/data_bloc.dart';
import 'package:bloc_flutter/bloc/data_event.dart';
import 'package:bloc_flutter/bloc/data_state.dart';
import 'package:bloc_flutter/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            return Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/image/mhs.jpg'),
                    ),
                    formInput(context),
                    ElevatedButton(
                      onPressed: () {
                        context.read<DataBloc>().add(AddData(
                            nama: namaController.text,
                            prodi: prodiController.text,
                            univ: univController.text));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailPage()),
                        );
                      },
                      child: const Text('Submit'),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget formInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: namaController,
                    onChanged: (String value) {
                      nama = value;
                    },
                    maxLength: 50,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Nama Lengkap',
                    ),
                  ),
                  TextFormField(
                    controller: prodiController,
                    onChanged: (String value) {
                      nama = value;
                    },
                    maxLength: 30,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Program Studi',
                    ),
                  ),
                  TextFormField(
                    controller: univController,
                    onChanged: (String value) {
                      nama = value;
                    },
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
}
