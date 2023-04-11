import 'dart:ffi';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false);
    }

    @override
    void dispose() {
      _nameController.dispose();
      _emailController.dispose();
      _passController.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only())),
                  validator: (value) {
                    if (value != null && value.length < 3) {
                      return 'Enter At least 3 Characters';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only())),
                  validator: (email) {
                    if (email != null && !EmailValidator.validate(email)) {
                      return 'Enter a Valid Email';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only())),
                  validator: (value) {
                    if (value != null && value.length < 8) {
                      return 'Enter min 8 Characters';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();

                      String username = _nameController.text;
                      if (isValidForm) {
                        logindata.setBool('login', false);
                        logindata.setString('username', username);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                            (route) => false);
                      }
                    },
                    child: const Text('Login'))
              ],
            )),
      ),
    );
  }
}
