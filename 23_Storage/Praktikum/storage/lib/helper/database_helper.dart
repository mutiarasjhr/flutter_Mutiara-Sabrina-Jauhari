import 'dart:ffi';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:storage/model/model_contact.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
  }

  final String _tableName = 'contacts';

  Future<Database> _initializeDb() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'contacts.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName(
    id INTEGER PRIMARY KEY,
    name TEXT,
    phoneNum TEXT)''',
        );
      },
      version: 1,
    );
    return db;
  }

  Future<void> insertTask(ModelContact modelContact) async {
    final Database db = await database;
    await db.insert(_tableName, modelContact.toMap());
  }

  Future<List<ModelContact>> getTask() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);

    return results.map((e) => ModelContact.fromMap(e)).toList();
  }

  // ambil data dengan id
  Future<ModelContact> getTaskById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> results =
        await db.query(_tableName, whereArgs: [id]);
    return results.map((e) => ModelContact.fromMap(e)).first;
  }

  // memperbarui data
  Future<void> updateContact(String id, ModelContact modelContact) async {
    final db = await database;
    await db.update(_tableName, modelContact.toMap(),
        where: 'id = ?', whereArgs: [modelContact.id]);
  }

  // menghapus data
  Future<void> deleteContact(int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
