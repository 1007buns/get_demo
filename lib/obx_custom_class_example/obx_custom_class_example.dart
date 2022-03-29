import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_demo/obx_custom_class_example/teacher.dart';

class ObxCustomClassExample extends StatelessWidget {
  ObxCustomClassExample({Key? key}) : super(key: key);

  var teacher = Teacher();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Obx---自定义类"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "我的名字是${teacher.name.value}",
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                teacher.name.value = teacher.name.value.toUpperCase();
              },
              child: const Text("转换大小写"),
            ),
          ],
        ),
      ),
    );
  }
}
