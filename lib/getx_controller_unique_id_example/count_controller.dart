import 'package:get/get.dart';

// 定义控制器继承自GetxController，并且定义uniqueID
class CountController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(["manto_count"]);
  }
}
