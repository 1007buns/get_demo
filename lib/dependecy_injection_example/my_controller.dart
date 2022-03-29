import 'package:get/get.dart';
import 'package:get_demo/obx_custom_class_example/teacher.dart';

// 创建控制器
class MyController extends GetxController {
  var teacher = Teacher();

  void converToUpperCase() {
    teacher.name.value = teacher.name.value.toUpperCase(); // 转大写
  }
}
