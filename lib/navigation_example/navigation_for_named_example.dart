import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationForNamedExample extends StatelessWidget {
  const NavigationForNamedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationForNamed"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: const Text("跳转到首页"),
            ),
          ],
        ),
      ),
    );
  }
}
