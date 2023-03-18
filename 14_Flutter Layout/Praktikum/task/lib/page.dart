import 'package:flutter/material.dart';
import 'package:task/contact/contact.dart';
import 'package:task/contact/icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON ListView in Flutter'),
        centerTitle: true,
      ),
      body:
          // Container(
          //   padding: EdgeInsets.all(10),
          //   child: GridView.count(
          //     crossAxisCount: 4,
          //     children: List.generate(icons.length, (index) {
          //       return Container(
          //         margin: EdgeInsets.all(15),
          //         decoration: BoxDecoration(
          //           color: Colors.blue,
          //           borderRadius: BorderRadius.circular(50),
          //         ),
          //         child: Icon(
          //           icons[index],
          //           color: Colors.white,
          //         ),
          //       );
          //     }),
          //   ),
          // ),
          ListView.builder(
              itemCount: Contact.contacts.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(Contact.contacts[index].name),
                  subtitle: Text(Contact.contacts[index].phone),
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Text(
                      Contact.contacts[index].name[0],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
    );
  }
}
