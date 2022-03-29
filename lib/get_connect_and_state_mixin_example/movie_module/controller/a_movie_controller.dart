import 'package:get/get.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/movie_module/providers/a_movie_providers.dart';

class AMovieController extends GetxController with StateMixin<List<dynamic>> {
  // var isLoading = true.obs;
  // var movieList = <MovieModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    //   try {
    //     isLoading(true);
    //     var movie = await ApiService.fetchMovie();
    //     if (movie != null) {
    //       movieList.assignAll(movie);
    //     }
    //   } finally {
    //     isLoading(false);
    //   }
    AMovieProvider.fetchMovie().then(
      (resp) => {
        change(resp, status: RxStatus.success()),
      },
      onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      },
    );
  }
}
// The default 'List' constructor isn't available when null safety is enabled.
