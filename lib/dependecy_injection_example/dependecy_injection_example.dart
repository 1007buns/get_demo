import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'my_controller.dart';

// 实例化控制器并使用
class DependecyInjectionExample extends StatelessWidget {
  // 即使不使用控制器实例也会被创建
  // tag将用于查找具有标签名称的实例
  // 控制器在不使用时被处理，但如果永久为真，则实例将在整个应用程序中保持活动状态
  MyController myController = Get.put(MyController(), permanent: true);
  // MyController myController = Get.put(MyController(), tag: "instancel", permanent: true);
  // 实例将在使用时创建
  // 它类似于'permanent'，区别在于实例在不被使用时被丢弃
  // 但是当它再次需要使用时，get 将重新创建实例
  // Get.lazyPut(()=> MyController());
  // Get.lazyPut(()=> MyController(), tag: "instancel");

  // Get.put 异步版本
  // Get.putAsync<MyController>(() async  => await MyController());

  // 每次都将返回一个新的实例
  // Get.create<MyController>(() => MyController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetController"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // 实例使用的tag创建
                  // Get.find<MyController>(tag: 'instancel');
                  Get.find<MyController>();
                },
                child: const Text("别点我"))
          ],
        ),
      ),
    );
  }
}
