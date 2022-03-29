import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/getx_controller_workers_example/workers_controller.dart';

// GetxController事件监听
// 这里主要讲解GetxController的事件监听，包括监听单个值、多个值等
class GetXControllerWorkersExample extends StatelessWidget {
  WorkersController workersController = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXControllerWorkersExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => workersController.increment(),
              child: const Text("增加"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                onChanged: (val) {
                  workersController.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
