import 'package:flutter/material.dart';
import 'package:rest_api/apis/apiss.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_svg/flutter_svg.dart';

class HomeEksplorasi extends StatefulWidget {
  const HomeEksplorasi({super.key});

  @override
  State<HomeEksplorasi> createState() => _HomeEksplorasiState();
}

class _HomeEksplorasiState extends State<HomeEksplorasi> {
  String hasil = "";
  String inputGenerate = "";

  final service = Service();

  var nameGenerateController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Generator',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.brown)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                  child: Text(
                'Generate Berdasarkan Huruf Yang Diinput',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )),
            ),
            formWidget(context),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    final service = Service();
                    final _hasil =
                        await service.getImageGenerate(inputGenerate);
                    hasil = _hasil.toString();

                    // nameGenerateController.clear();
                    // inputGenerate = "";

                    setState(() {});
                  },
                  child: Text('GENERATE')),
            ),
            Center(
              child: hasil == ""
                  ? Text('No Image')
                  : SvgPicture.string(
                      hasil.toString(),
                      height: 300,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameGenerateController..text = inputGenerate,
                    onChanged: (String value) {
                      inputGenerate = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Huruf',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
