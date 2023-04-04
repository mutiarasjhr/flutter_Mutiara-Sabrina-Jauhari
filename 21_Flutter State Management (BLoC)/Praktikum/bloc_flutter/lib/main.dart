import 'package:bloc_flutter/bloc/data_bloc.dart';
import 'package:bloc_flutter/detail.dart';
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
    return BlocProvider<DataBloc>(
      create: (context) => DataBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {'/detail': (context) => const DetailPage()},
        home: const Home(),
      ),
    );
  }
}
