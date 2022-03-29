import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
* GetUtils是getx为我们提供一些常用的工具类库，
* 包括值是否为空、是否是数字、是否是视频、图片、
* 音频、PPT、Word、APK、邮箱、手机号码、日期、
* MD5、SHA1等等
* */

class GetXUtilsExample extends StatelessWidget {
  var textFieldController = TextEditingController();

  GetXUtilsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Utils"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textFieldController,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (GetUtils.isEmail(textFieldController.text)) {
                    Get.snackbar("正确", "恭喜你，完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("邮箱格式错误", "请输入正确的邮箱",
                        backgroundColor: Colors.pink);
                  }
                },
                child: const Text("判断是否是邮箱"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (GetUtils.isIPv4(textFieldController.text)) {
                    Get.snackbar("正确", "恭喜你，完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("IPv4格式错误", "请输入正确的IPV4地址",
                        backgroundColor: Colors.pink);
                  }
                },
                child: const Text("判断是否是IPv4地址"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (GetUtils.isPhoneNumber(textFieldController.text)) {
                    Get.snackbar("正确", "恭喜你，完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("手机号格式错误", "请输入正确的手机号",
                        backgroundColor: Colors.pink);
                  }
                },
                child: const Text("判断是否是手机号"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
