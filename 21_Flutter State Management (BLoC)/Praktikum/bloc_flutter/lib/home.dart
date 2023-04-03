import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';
  String phoneNum = '';
  var nameController = TextEditingController();
  var phoneNumController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
      ),
      body: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: nameController,
                onChanged: (String value) {
                  name = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.person)),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: phoneNumController,
                onChanged: (String value) {
                  phoneNum = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.phone_android)),
              )
            ],
          )),
    );
  }
}
