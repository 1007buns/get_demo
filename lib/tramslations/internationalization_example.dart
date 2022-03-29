import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/tramslations/messages_controller.dart';

// 实例化控制器并使用
class InternaationalizationExample extends StatelessWidget {
  // 实例化控制器
  MessagesController messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internationalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "hello".tr,
              style: const TextStyle(color: Colors.pink, fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('zh', 'CN'),
              child: const Text("切换到中文"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('en', 'US'),
              child: const Text("切换到英文"),
            ),
          ],
        ),
      ),
    );
  }
}
