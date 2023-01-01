import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
              "Screen was clicked - ${_counterController.counter.value} times"),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go back Symond"))
        ],
      ),
    );
  }
}
