import 'package:assets_buttom_navigator/myhome.dart';
import 'package:assets_buttom_navigator/prioritas%202/page/see_more.dart';
import 'package:flutter/material.dart';
import 'detail-page.dart';

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
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/detail-page': (context) => DetailPage(),
      },
      home: const MyHome(),
      // SeeMore()
    );
  }
}
