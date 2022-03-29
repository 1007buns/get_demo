import 'package:get/get.dart';

// 创建国际化类
// 需要继承自Translations并重写keys方法。
class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_CH': {'hello': "你好，世界"},
        'en_US': {'hello': "hello world"}
      };
}
