import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/getx_controller_unique_id_example/count_controller.dart';

// GetxController UniqueID
// 我们在开发的过程中会碰到一种情况，就是多个地方引用了同一个属性，但我只想单独更新某一个地方，那么就可以用UniqueID来进行区分

class GetXControllerUniqueIDExample extends StatelessWidget {
  CountController countController = Get.put(CountController());
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
            GetBuilder<CountController>(
              builder: (controller) {
                return Text(
                  "计数器值为：${controller.count}",
                  style: const TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),
            GetBuilder<CountController>(
              id: "manto_count",
              builder: (controller) {
                return Text(
                  "计数器值为：${controller.count}",
                  style: const TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => countController.increment(),
                child: const Text("增加"))
          ],
        ),
      ),
    );
  }
}
