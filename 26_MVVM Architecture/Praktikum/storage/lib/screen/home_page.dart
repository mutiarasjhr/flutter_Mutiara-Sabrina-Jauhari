import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/view_model/db_manager.dart';
import 'package:storage/model/model_contact.dart';
import 'package:storage/screen/add_contact.dart';
import 'package:storage/screen/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences logindata;
  String username = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  @override
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
      email = logindata.getString('email').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<DbManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                logindata.setBool('login', true);
                logindata.remove('username');
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              },
              icon: Icon(Icons.logout_rounded)),
        ],
      ),
      body: Column(
        children: [
          Consumer<DbManager>(
            builder: (context, manager, child) {
              final modelContact = manager.modelContact;
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 600,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: manager.modelContact.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(manager.modelContact[index].name),
                          subtitle: Text(manager.modelContact[index].phoneNum),
                          trailing: SizedBox(
                            width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: const Text(
                                          'Berhasil Menghapus Contact'),
                                      duration: Duration(seconds: 3),
                                    ));
                                    final contactToDelete = ModelContact(
                                        id: index, name: '', phoneNum: '');

                                    Provider.of<DbManager>(context,
                                            listen: false)
                                        .deleteContact(index);
                                  },
                                  child: const Icon(Icons.delete_forever),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ));
            },
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AddContact(),
                ),
                (route) => false,
              );
            },
            backgroundColor: Color.fromARGB(255, 31, 62, 107),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
