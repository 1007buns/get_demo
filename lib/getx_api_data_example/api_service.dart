import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_demo/getx_api_data_example/movie_model.dart';

class ApiService {
  static Future<List<MovieModel>?> fetchMovie() async {
    var response = await Dio().get(
        "http://apis.juhe.cn/fapig/douyin/billboard?type=hot_video&size=50&key=9eb8ac7020d9bea6048db1f4c6b6d028");
    if (response.statusCode == 200) {
      var jsonString = response.data['result'];
      return movieModelFromJson(json.encode(response.data["result"]));
    }
  }
}
// The body might complete normally, causing 'null' to be returned, but the return type is a potentially non-nullable type.
