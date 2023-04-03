import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/jalan.jpg",
      "assets/sunset.jpg",
      "assets/motoran.jpg",
      "assets/kapal2.jpeg",
      "assets/kapal1.jpeg",
      "assets/kapal3.jpeg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                'Detail Gallery',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // Image.asset(images.first),
            Image.asset(images.last),
          ],
        ),
      ),
    );
  }
}
