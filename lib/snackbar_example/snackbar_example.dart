import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

// snackbar示例
class SnackbarExample extends StatelessWidget {
  const SnackbarExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Getx Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Snacbar 标题", "欢迎使用Snacbar");
                },
                child: Text("显示 Snackbar"))
          ],
        ),
      ),
    );
  }
}
