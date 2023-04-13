import 'package:flutter/material.dart';
import 'package:rest_api/apis/apiss.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_svg/flutter_svg.dart';

class HomePrio2 extends StatefulWidget {
  const HomePrio2({super.key});

  @override
  State<HomePrio2> createState() => _HomePrio2State();
}

class _HomePrio2State extends State<HomePrio2> {
  String? hasil = '';
  final service = Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DiceBear API',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.brown),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: const Text(
                'Get Image',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                    fontSize: 40),
              ),
            ),
            hasil == ""
                ? Text('No Image')
                : SvgPicture.string(
                    hasil.toString(),
                    height: 300,
                  ),
            ElevatedButton(
              onPressed: () async {
                final service = Service();
                final _hasil = await service.getImg();
                hasil = _hasil.toString();
                setState(() {});
              },
              child: Text('Get Image'),
            ),
          ],
        ),
      ),
    );
  }
}
