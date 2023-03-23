import 'package:flutter/material.dart';
import 'package:flutter_form/new_contact.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'input_decor.dart';
import 'dart:developer';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var name = "";
  var phone = "";
  final List<Contact> data = [
    Contact('Sabrina', '081262634240', Color.fromARGB(255, 241, 125, 193)),
    Contact('Bazz', '085243456578', Color.fromARGB(255, 241, 125, 193)),
  ];

  void _simpan() {
    log('Setelah Submit');
    log("Nama : ${_nameController.text}");
    log("Phone : ${_phoneController.text}");
    log("Date : ${currentDate}");
    log("Color : ${_currentColor}");
  }

  //Tanggal dan Pick Color
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Color.fromARGB(255, 241, 125, 193);

// file pick dan open file
  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    // Mendapatkan file dari object result
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
    var image = file.name;
  }

  // text field
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(Icons.contact_page),
              ),
              SizedBox(
                height: 20,
                child: Center(
                  child: Text(
                    'Create New Contacts',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 300,
                child: Center(
                  child: Text(
                    'a dialog is a type of modal window that appears in front of app content to provide critical information.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              CustomForm(context),
              buildDatePicker(context),
              buildColorPicker(context),
              buildFilePicker(context),
              buildElevatorButton(context),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(data[index].name),
                        subtitle: Text(data[index].phone),
                        leading: CircleAvatar(
                          backgroundColor: data[index].color,
                          child: Text(
                            data[index].name[0],
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        trailing: SizedBox(
                          height: 20,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    var id = index;
                                    name = data[index].name;
                                    phone = data[index].phone;

                                    data[index] =
                                        Contact(name, phone, _currentColor);
                                  });
                                },
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    data.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete),
                              )
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget CustomForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // Add TextFormFields and ElevatedButton here.
            TextFormField(
              controller: _nameController..text = name,
              maxLength: 50,
              decoration: InputDecorationStyle.inputDecorationStyle('Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                } else if (value.length <= 2) {
                  return 'Nama huruf minimal 2';
                }
                return null;
              },
              onChanged: (text) {
                print('User input on text field : $text');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: 15,
              controller: _phoneController..text = phone,
              decoration: InputDecorationStyle.inputDecorationStyle('Phone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                } else if (value.length <= 8) {
                  return 'Nomor minimal 8 digit';
                }
                return null;
              },
              onChanged: (text) {
                print('User input on text field : $text');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildElevatorButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Validate returns true if the form is valid, or false otherwise.
          if (_formKey.currentState!.validate()) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //     const SnackBar(content: Text('Processing Data')),
            _simpan();
          }
          setState(() {
            log;
            data.add(Contact(
                _nameController.text, _phoneController.text, _currentColor));
          });
        },
        child: Text(name != "" ? "Update" : "Submit"));
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            )
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 50,
            width: 50,
            color: _currentColor,
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick your Color'),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Pick Color'),
          ),
        ),
      ],
    );
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Pick Files'),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            child: const Text('Pick and Open File'),
          ),
        ),
      ],
    );
  }
}
