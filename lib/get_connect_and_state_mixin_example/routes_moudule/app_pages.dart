import 'package:get/get.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/movie_module/bindings/a_movie_binding.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/movie_module/view/a_movie_listview.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/routes_moudule/app_routes.dart';

class AppPages {
  static const INIT = Routes.MOVIE;

  static final routes = [
    GetPage(
        name: Routes.MOVIE,
        page: () => AMovieListView(),
        binding: AMovieBinding())
  ];
}
