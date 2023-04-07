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
  String phone = '';
  String prodi = '';
  String univ = '';
  var namaController = TextEditingController();
  var phoneController = TextEditingController();
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
            return SingleChildScrollView(
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
                            phone: phoneController.text,
                            prodi: prodiController.text,
                            univ: univController.text));
                        namaController.clear();
                        phoneController.clear();
                        prodiController.clear();
                        univController.clear();

                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    DetailPage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return ScaleTransition(
                                scale: Tween<double>(
                                  begin: 0.0,
                                  end: 1.0,
                                ).animate(animation),
                                child: child,
                              );
                            },
                            transitionDuration:
                                const Duration(milliseconds: 500),
                          ),
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
                    controller: phoneController,
                    onChanged: (String value) {
                      phone = value;
                    },
                    maxLength: 13,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Nomor Telepon',
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
