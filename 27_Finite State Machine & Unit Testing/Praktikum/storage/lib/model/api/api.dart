import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:storage/model/model_food.dart';

class FoodApi {
  final Dio dio = Dio();
  static Future<List<FoodModel>> getAllFood() async {
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
