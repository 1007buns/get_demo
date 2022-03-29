import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Obx 计数示例
class ObxCountExample extends StatelessWidget {
  ObxCountExample({Key? key}) : super(key: key);
  RxInt count = RxInt(0);

  // 增量
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ObxCountExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "count的值为：$count",
                style: const TextStyle(color: Colors.pink, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Text("点我加一"))
          ],
        ),
      ),
    );
  }
}
