import 'package:flutter/material.dart';
import 'dart:developer';

class HomeEksplorasi extends StatefulWidget {
  const HomeEksplorasi({super.key});

  @override
  State<HomeEksplorasi> createState() => _HomeEksplorasiState();
}

class _HomeEksplorasiState extends State<HomeEksplorasi> {
  List<String> images = [
    "assets/jalan.jpg",
    "assets/sunset.jpg",
    "assets/motoran.jpg",
    "assets/kapal2.jpeg",
    "assets/kapal1.jpeg",
    "assets/kapal3.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Galery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  log("message");
                  log(index.toString());
                  //halaman selanjutnya berdasarkan gmabar ditekan
                  log("Masuk ke Halaman Detail Page");
                  Navigator.pushNamed(context, '/detail-page',
                      arguments: images[index]);
                },
                child: Container(
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fitWidth)),
                ),
              );
            }),
      ),
    );
  }
}
