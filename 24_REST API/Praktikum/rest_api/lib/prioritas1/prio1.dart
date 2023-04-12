import 'package:flutter/material.dart';
import 'package:rest_api/apis/apiss.dart';
import 'package:rest_api/model/contact_model.dart';

class HomePrio1 extends StatefulWidget {
  const HomePrio1({super.key});

  @override
  State<HomePrio1> createState() => _HomePrio1State();
}

class _HomePrio1State extends State<HomePrio1> {
  String name = '';
  String phone = '';
  String? result;

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: 900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formInput(context),
              buttonWidget(context),
              Center(
                child: Text(
                  result ?? "".toString(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget formInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    onChanged: (String value) {
                      name = value;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: 'Name'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: phoneController,
                    onChanged: (String value) {
                      phone = value;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: 'Phone Number'),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget buttonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () async {
                final service = Service();
                final _result = await service.createUser(
                    name: nameController.text, phone: phoneController.text);
                result = _result.toString();
                setState(() {});
              },
              child: const Text('POST')),
          ElevatedButton(
              onPressed: () async {
                final service = Service();
                final _result = await service.fetchUsers();
                result = _result.toString();
                setState(() {});
              },
              child: const Text('FETCH')),
          ElevatedButton(
              onPressed: () async {
                final service = Service();

                final _result = await service.update(
                    name: nameController.text, phone: phoneController.text);
                // service.getR();
                result = _result.toString();
                setState(() {});
              },
              child: const Text('PUT')),
        ],
      ),
    );
  }
}
