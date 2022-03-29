import 'package:get/get.dart';

/*
GetX Binding
在我们使用GetX状态管理器的时候，往往每次都是用需要手动实例化一个控制器，
这样的话基本页面都需要实例化一次，这样就太麻烦了，而Binding 能解决上述问
题，可以在项目初始化时把所有需要进行状态管理的控制器进行统一初始化，
*/

// 声明需要进行的绑定控制器类
class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingMyController>(() => BindingMyController());
    Get.lazyPut<BindingHomeController>(() => BindingHomeController());
  }
}

class BindingMyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}

class BindingHomeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
