import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/gambar.dart';

class DetailPage extends StatelessWidget {
  final int indexImage;
  const DetailPage({super.key, required this.indexImage});

  @override
  Widget build(BuildContext context) {
    final gambarProvider = Provider.of<Gambar>(context, listen: false);
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
            Image.asset(gambarProvider.images[indexImage])
          ],
        ),
      ),
    );
  }
}
