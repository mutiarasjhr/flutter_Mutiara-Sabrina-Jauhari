import 'package:flutter/material.dart';
import 'package:rest_api/eksplorasi/homepage.dart';
import 'package:rest_api/prioritas1/prio1.dart';
import 'package:rest_api/prioritas2/prio2.dart';
import 'package:rest_api/eksplorasi/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      // home: HomePrio1(),
      // home: HomePrio2(),
      home: HomeEksplorasi(),
    );
  }
}
