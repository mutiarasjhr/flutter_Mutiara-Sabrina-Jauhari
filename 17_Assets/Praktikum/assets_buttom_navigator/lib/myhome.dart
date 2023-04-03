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
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    )),
                    context: context,
                    builder: (context) {
                      return Container(
                        //buat belajar :)
                        // tinggi dan lebar bottom sheet
                        width: 600,
                        height: 400,
                        decoration:
                            const BoxDecoration(shape: BoxShape.rectangle),
                        child: GestureDetector(
                          child: Column(
                            children: [
                              const Text(
                                "Dialog Bottom Sheet",
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.asset(
                                  width: 200,
                                  height: 200,
                                  images[index],
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: Image.asset(images[index]),
                                insetPadding: const EdgeInsets.all(40),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/detail-page');
                                    },
                                    child: const Text('Ya'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Tidak'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
                child: SizedBox(
                  child: Image.asset(
                    images[index],
                    width: 100,
                    height: 40,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
