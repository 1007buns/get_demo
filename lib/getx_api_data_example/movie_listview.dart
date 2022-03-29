import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'movie_controller.dart';

class MovieListView extends StatelessWidget {
  final MovieController movieController = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie"),
      ),
      body: Obx(() {
        if (movieController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: movieController.movieList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            movieController.movieList[index].itemCover,
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                            // color: Colors.orange,
                            // colorBlendMode: BlendMode.color,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movieController.movieList[index].author,
                              style: const TextStyle(
                                  color: Colors.black45, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: 2,
                  )
                ],
              );
            },
          );
        }
      }),
    );
  }
}
