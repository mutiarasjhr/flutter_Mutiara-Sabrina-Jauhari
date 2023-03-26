import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
          title: const Text('My Gallery'),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle),
                                    child: Image.asset(images[index]),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                  );
                })));
  }
}
