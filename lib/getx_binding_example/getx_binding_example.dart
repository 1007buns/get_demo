import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/getx_binding_example/all_controller_binding.dart';
import 'package:get_demo/navigation_example/home.dart';

// 在页面中使用状态管理器
class GetXBindingExample extends StatelessWidget {
  const GetXBindingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXBinding"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "计数器的值为${Get.find<BindingMyController>().count}",
                  style: const TextStyle(color: Colors.pink, fontSize: 30),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<BindingMyController>().increment();
                },
                child: Text("点击加1")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(const Home());
                },
                child: const Text("跳转去首页"))
          ],
        ),
      ),
    );
  }
}
