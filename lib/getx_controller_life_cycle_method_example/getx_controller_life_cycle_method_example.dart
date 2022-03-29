import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/getx_controller_life_cycle_method_example/my_life_cycle_controller.dart';

// GetxController生命周期
// 这里主要讲解GetxController的生命周期，包括初始化、加载完成、销毁等。
class GetXControllerLifecycleMethodExample extends StatelessWidget {
  MyLifeCycleController myLifeCycleController =
      Get.put(MyLifeCycleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetXControllerLifecycleMethodExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyLifeCycleController>(
              initState: (data) => myLifeCycleController.increment(),
              dispose: (_) => myLifeCycleController.cleanTask(),
              builder: (controller) {
                return Text(
                  "计数器值为：${myLifeCycleController.count}",
                  style: const TextStyle(color: Colors.pink, fontSize: 30),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
