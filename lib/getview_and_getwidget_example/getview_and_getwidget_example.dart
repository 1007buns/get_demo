import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/getview_and_getwidget_example/getview_count_controller.dart';

/*
* 将视图层继承自GetView并传入需要注册的控制器并Get.put()即可
* */

class GetViewAndGetWidgetExample extends GetView<GetViewCountController> {
  @override
  Widget build(BuildContext context) {
    Get.put(GetViewCountController());
    // Get.create(() => GetViewCountController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "count的值为：${controller.count}",
                style: const TextStyle(color: Colors.pink, fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text("点我加1"),
            ),
          ],
        ),
      ),
    );
  }
}
