import 'package:assets_buttom_navigator/detail-page.dart';
import 'package:assets_buttom_navigator/provider/gambar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final gambarProvider = Provider.of<Gambar>(context, listen: false);

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
          itemCount: gambarProvider.images.length,
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
                                gambarProvider.images[index],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Image.asset(gambarProvider.images[index]),
                              insetPadding: const EdgeInsets.all(40),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (_) => DetailPage(
                                                  indexImage: index,
                                                )));
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
                child: Image.asset(gambarProvider.images[index]),
                width: 100,
                height: 40,
              ),
            );
          },
        ),
      ),
    );
  }
}
