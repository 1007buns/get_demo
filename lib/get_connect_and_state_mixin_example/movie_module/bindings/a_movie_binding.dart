import 'package:get/get.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/movie_module/controller/a_movie_controller.dart';

class AMovieBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AMovieController>(() => AMovieController());
  }
}
