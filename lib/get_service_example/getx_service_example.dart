import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/get_service_example/service.dart';

// 调用Service
class GetXServiceExample extends StatelessWidget {
  const GetXServiceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<Service>().getCounter();
              },
              child: const Text("点我加1"),
            )
          ],
        ),
      ),
    );
  }
}
