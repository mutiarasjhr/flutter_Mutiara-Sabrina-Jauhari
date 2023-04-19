import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:storage/model/api/api.dart';
import 'package:storage/model/model_contact.dart';
import 'package:storage/model/model_food.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../helper/database_helper.dart';

class FoodManager extends ChangeNotifier {
  List<FoodModel> _modelfood = [];

  List<FoodModel> get modelfood => _modelfood;

  Future<void> getAllFood() async {
    try {
      final result = await FoodApi.getAllFood();
      _modelfood = result;
    } catch (e) {
      print(e);
    }
  }

  Future<List<FoodModel>> getFood() async {
    try {
      final response = await http.get(Uri.parse(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods'));
      final List<dynamic> body = jsonDecode(response.body);
      final List<FoodModel> data =
          body.map((e) => FoodModel.fromJSON(e)).toList();

      debugPrint(response.body.toString());
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
