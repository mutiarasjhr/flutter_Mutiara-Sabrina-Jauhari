import 'package:storage/model/api/api.dart';
import 'package:storage/model/model_food.dart';
import 'package:flutter/material.dart';
import 'package:storage/view_model/food_provider.dart';

class homePrio1 extends StatefulWidget {
  const homePrio1({super.key});

  @override
  State<homePrio1> createState() => _homePrio1State();
}

class _homePrio1State extends State<homePrio1> {
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Prioritas 1'),
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800),
          centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: () async {
                  final food = FoodManager();
                  final _result = await food.getFood();
                  result = _result.toString();
                  setState(() {});
                },
                child: Text("Get Data")),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(result ?? "".toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
