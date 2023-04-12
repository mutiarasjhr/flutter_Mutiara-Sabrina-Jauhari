import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rest_api/model/contact_model.dart';
import 'dart:convert';

class Service {
  final Dio dio = Dio();

  Future fetchUsers() async {
    try {
      final Response response = await dio.get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future createUser({
    required String name,
    required String phone,
  }) async {
    final Response response = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {
          'name': name,
          'phone': phone,
        });
    final ContactModel contactModel = ContactModel.fromJSON(response.data);
    return response.data;
  }

  Future update({required String name, required String phone}) async {
    try {
      int id = 1;
      final Response response = await dio.put(
        'https://jsonplaceholder.typicode.com/posts/$id',
        data: {
          'id': 1,
          'title': 'foo',
          'body': 'bar',
          'userId': 1,
        },
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
