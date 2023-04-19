import 'package:flutter/material.dart';
import 'package:storage/screen/home_page.dart';
import 'package:storage/screen/login_page.dart';
import 'package:provider/provider.dart';
import 'package:storage/screen/prio1/homePrio1.dart';
import 'package:storage/view_model/db_manager.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact',
        // home: homePrio1(),
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage()
        },
      ),
    ),
  );
}
