import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:storage/model/model_contact.dart';
import 'package:storage/screen/home_page.dart';
import 'package:provider/provider.dart';
import 'package:storage/view_model/db_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddContact extends StatelessWidget {
  AddContact({super.key});
  int? id;
  String name = '';
  String phone = '';

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  final prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
        leading: Icon(Icons.person_add),
      ),
      body: Column(
        children: [
          formInput(
            context,
          )
        ],
      ),
    );
  }

  Widget formInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19),
      child: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  onChanged: (String value) {
                    name = value;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: "Insert Your Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: phoneController,
                  onChanged: (String value) {
                    phone = value;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                      hintText: "Insert Your Phone Number"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Berhasil Menambahkan Contact'),
                        duration: const Duration(seconds: 3),
                        action: SnackBarAction(
                          textColor: Colors.white,
                          label: 'Sukses !',
                          onPressed: () {},
                        ),
                      ));
                      final contactAdd =
                          ModelContact(id: id, name: name, phoneNum: phone);
                      Provider.of<DbManager>(context, listen: false)
                          .addContact(contactAdd);

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                    },
                    child: const Text('Add'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
