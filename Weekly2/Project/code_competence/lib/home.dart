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
          // leading: Icon(
          //   Icons.shopping_bag,
          //   color: Color.fromARGB(255, 54, 50, 50),
          // ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 222, 217, 214),
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 37, 8),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                child: const Text(
                  "About us",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 151, 110, 79),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                child: const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 120, 96, 77),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                ),
              )
            ],
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
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/1.jpg'),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: Text('Tie Neck Curved Top',
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 91, 73, 67),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/2.jpg'),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: Text('Tie Front Paisley Blouse',
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 91, 73, 67),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/3.jpg'),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: Text('Liberty of London Wrap Dress',
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 91, 73, 67),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/4.jpg'),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: Text('Curduroy Blouse',
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 91, 73, 67),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              formInput(context),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar());
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
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 53, 47, 47),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
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

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 151, 110, 79),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: 0,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'About Us',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Account'),
      ],
    );
  }
}
