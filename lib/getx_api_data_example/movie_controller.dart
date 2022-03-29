import 'package:get/get.dart';
import 'package:get_demo/getx_api_data_example/movie_model.dart';

import 'api_service.dart';

class MovieController extends GetxController {
  var isLoading = true.obs;
  var movieList = <MovieModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    try {
      isLoading(true);
      var movie = await ApiService.fetchMovie();
      if (movie != null) {
        movieList.assignAll(movie);
      }
    } finally {
      isLoading(false);
    }
  }
}
// The default 'List' constructor isn't available when null safety is enabled.
