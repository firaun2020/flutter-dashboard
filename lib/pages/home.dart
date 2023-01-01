import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/controllers/counterController.dart';
import 'package:web_project/pages/otherPage.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Click - ${counterController.counter.value}"),
            ),
            const SizedBox(height: 20),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen());
                    },
                    child: const Text("open next screen"))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementer();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
