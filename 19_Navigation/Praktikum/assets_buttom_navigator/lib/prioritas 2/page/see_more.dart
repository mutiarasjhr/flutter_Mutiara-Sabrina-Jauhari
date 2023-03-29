import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All My Gallery')),
      body: Center(
        child: ListView(
          children: [
            Image.asset('1.jpg'),
            Image.asset('2.jpg'),
            Image.asset('3.jpg'),
            Image.asset('4.jpg'),
            Image.asset('5.jpg'),
          ],
        ),
      ),
    );
  }
}
