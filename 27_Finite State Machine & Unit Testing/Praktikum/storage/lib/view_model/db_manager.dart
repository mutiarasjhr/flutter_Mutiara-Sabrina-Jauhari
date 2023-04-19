import 'package:flutter/material.dart';
import 'package:storage/model/model_contact.dart';

import '../helper/database_helper.dart';

class DbManager extends ChangeNotifier {
  // getter-setter
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  List<ModelContact> _modelContact = [];
  late DatabaseHelper _dbHelper;

  List<ModelContact> get modelContact => _modelContact;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllContact();
  }
  void _getAllContact() async {
    changeState(ContactViewState.loading);
    try {
      _modelContact = await _dbHelper.getTask();
      notifyListeners();

      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
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

  vFuture<ModelContact>(int id, modelContact) async {
    return await _dbHelper.getTaskById(id);
  }
}

enum ContactViewState {
  none,
  loading,
  error,
}
