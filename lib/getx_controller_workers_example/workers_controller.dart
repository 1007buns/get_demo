import 'package:get/get.dart';

// 定义控制器继承自GetxController
class WorkersController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

//  重写onInit并监听事件
  @override
  void onInit() {
    // TODO: implement onInit
    // 监听count的值,当它发生改变的时候调用
    ever(count, (callback) => print("ever----$count"));

    // 监听多个值,当它们发生改变的时候调用
    everAll([count], (callback) => print("everAll----$count"));

    // count值改变时调用,只执行一次
    once(count, (callback) => print("once----$count"));

    // 用户停止打字时1秒后调用,主要是防DDos
    debounce(count, (callback) => print("debounce----$count"));

    // 忽略3秒内的所有变动
    interval(count, (callback) => print("interval----$count"));
    super.onInit();
  }
}
