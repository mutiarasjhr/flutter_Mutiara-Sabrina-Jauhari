import 'package:app/kontak.dart';
import 'package:app/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: const [
      //       ListTile(
      //           title: Text(
      //         "Home",
      //         selectionColor: Color.fromARGB(255, 249, 246, 246),
      //       )),
      //       ListTile(
      //           title: Text("Settings",
      //               selectionColor: Color.fromARGB(255, 249, 246, 246))),
      //     ],
      //   ),
      // ),
      body: const ListViewWidget(
          // child: Text('Ini adalah Material App'),
          ),
      // ListView.builder(
      //     itemCount: Kontak.samples.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return ListTile(
      //         title: Text(Kontak.samples[index].nama),
      //         subtitle: Text(Kontak.samples[index].nomor),
      //         leading: CircleAvatar(
      //           child: Text(
      //             Kontak.samples[index].nama[0],
      //           ),
      //         ),
      //       );
      //     }),

      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: primaryColor,
          selectedItemColor: baseColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), label: 'Information'),
            // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn Flutter'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn ReactJS'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn VueJS'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn Tailwind CSS'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn UI/UX'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn Figma'),
          decoration: BoxDecoration(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text('Learn Digital Marketing'),
          decoration: BoxDecoration(),
        ),
      ],
    );
  }
}
