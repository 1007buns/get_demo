import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_demo/getx_controller/my_controller.dart';

class GetXControllerExample extends StatelessWidget {
  GetXControllerExample({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Obx---GetXController"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              init: myController,
              builder: (controller) {
                return Text(
                  "我的名字是${controller.teacher.name}",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  myController.convertToUpperCase();
                },
                child: const Text("转换为大写"))
          ],
        ),
      ),
    );
  }
}
