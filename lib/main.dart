import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/routes_moudule/app_pages.dart';

// 初始化Service
// 初始化服务
// Future<void> main() async {
//   await initServices();
//   runApp(MyApp());
// }
//
// Future<void> initServices() async {
//   print("初始化服务");
//   await Get.putAsync(() async => await Service());
//   print("所有服务启动");
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// GetX Binding
    return GetMaterialApp(
      title: "GetX",
      initialRoute: AppPages.INIT,
      getPages: AppPages.routes,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "Get—x",
//       translations: Message(), // 国际化配置文件
//       locale: const Locale('zh', 'CN'), // 设置默认语言，不设置的话为系统当前语言
//       fallbackLocale: const Locale('zh', 'CN'), // 配置错误的情况下,使用的语言
//       getPages: [
//         GetPage(name: "/", page: () => const MyApp()),
//         GetPage(name: "/home", page: () => const Home()),
//       ],
//       home: const GetXServiceExample(),
//     );
//   }
// }
