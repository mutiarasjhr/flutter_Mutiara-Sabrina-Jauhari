import 'package:bloc_flutter/bloc/contact_bloc.dart';
import 'package:bloc_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<KontakBloc>(
      create: (context) => KontakBloc(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
