import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _textHelpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 222, 217, 214),
        title: Text(
          'Clothing.id',
          style: GoogleFonts.aleo(
              color: Color.fromARGB(255, 54, 50, 50),
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.shopping_bag,
          color: Color.fromARGB(255, 54, 50, 50),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Hello, Welcome to Clothing.id App. Disini anda dapat mencari model pakaian yang diinginkan <3',
                style: GoogleFonts.aleo(
                  textStyle: TextStyle(
                      color: Color.fromARGB(255, 91, 73, 67),
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 400,
              child: Image.asset('assets/cloth.jpg'),
            ),
            SizedBox(
              height: 30,
            ),
            formInput(context),
          ],
        ),
      ),
    );
  }

  Widget formInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 15),
            children: <TextSpan>[
              TextSpan(
                  text:
                      "Need to get in touch with us? Either fill out the form with your inquiry find the ",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "department email ",
                  style: TextStyle(color: Colors.brown)),
              TextSpan(
                text: "you'd like to contact bellow",
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text('First Name'),
                subtitle: TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: ListTile(
                title: Text('Last Name'),
                subtitle: TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: Text('Email'),
          subtitle: TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        ListTile(
          title: Text('What can we help you with?'),
          subtitle: TextFormField(
            controller: _textHelpController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            log("Nama : ${_firstNameController.text} ${_lastNameController.text}  ");
            log("Email : ${_emailController.text}  ");
            showDialogWidget(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              // height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 53, 47, 47),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }

  void showDialogWidget(index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Center(child: Text("Detail Help Desk")),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Ya'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tidak'),
              ),
            ],
            content: Container(
                height: 300,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Nama : ${_firstNameController.text} ${_lastNameController.text}  "),
                    Text("Email : ${_emailController.text}  "),
                    Text("How can help you ? : ${_textHelpController.text}  ")
                  ],
                )),
          );
        });
  }
}
