import 'package:flutter/material.dart';
import 'package:storage/model/model_contact.dart';

import 'database_helper.dart';

class DbManager extends ChangeNotifier {
  List<ModelContact> _modelContact = [];
  late DatabaseHelper _dbHelper;

  List<ModelContact> get modelContact => _modelContact;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllContact();
  }
  void _getAllContact() async {
    _modelContact = await _dbHelper.getTask();
    notifyListeners();
  }

  Future<void> addContact(ModelContact modelContact) async {
    await _dbHelper.insertTask(modelContact);
    _getAllContact();
  }

  Future<ModelContact> getTaskById(int id) async {
    return await _dbHelper.getTaskById(id);
  }

  void updateContact(String id, ModelContact modelContact) async {
    await _dbHelper.updateContact(id, modelContact);
    _getAllContact();
    notifyListeners();
  }

  void deleteContact(int id) async {
    await _dbHelper.deleteContact(id);
    _getAllContact();
    notifyListeners();
  }
}
