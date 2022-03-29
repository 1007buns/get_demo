import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 对话框示例
class DialogExample extends StatelessWidget {
  const DialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "提示",
                  middleText: "这是一个 Dialog",
                );
              },
              child: const Text("显示 Dialog"),
            )
          ],
        ),
      ),
    );
  }
}
