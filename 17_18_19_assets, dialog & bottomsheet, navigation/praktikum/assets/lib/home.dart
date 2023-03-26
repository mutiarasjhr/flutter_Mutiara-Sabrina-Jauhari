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
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  showBottomSheet(
                      backgroundColor: Color.fromARGB(255, 225, 221, 221),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(50),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Container(
                                width: 600,
                                height: 400,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                // child: GestureDetector(
                                //   onTap: () {
                                //     showDialog(
                                //         context: context,
                                //         builder: (context) => AlertDialog(
                                //               content:
                                //                   Image.asset(images[index]),
                                //               actions: [
                                //                 TextButton(
                                //                   onPressed: () {
                                //                     Navigator.pop(context);
                                //                   },
                                //                   child: const Text('no'),
                                //                 ),
                                //                 TextButton(
                                //                   onPressed: () {},
                                //                   child: const Text('yes'),
                                //                 ),
                                //               ],
                                //             ));
                                //   },
                                // ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Image.asset(images[index]),
              );
            },
          ),
        ));
  }
}
