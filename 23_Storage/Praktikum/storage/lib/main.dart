import 'package:flutter/material.dart';
import 'package:storage/screen/home_page.dart';
import 'package:storage/screen/login_page.dart';
import 'package:provider/provider.dart';
import 'package:storage/helper/db_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact',
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage()
        },
      ),
    );
  }
}
