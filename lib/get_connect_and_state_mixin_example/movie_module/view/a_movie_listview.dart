import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/get_connect_and_state_mixin_example/movie_module/controller/a_movie_controller.dart';

class AMovieListView extends GetView<AMovieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie"),
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data!.length,
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
                          data[index].itemCover,
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
                            data[index].author,
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
        ),
      ),
    );
  }
}

/*
*
* Successfully created project 'get_demo' on
*  GitHub, but initial commit failed: Author identity
* unknown *** Please tell me who you are. Run git config
* --global user.email "you@example.com"
*  git config --global user.name
*  "Your Name" to set your account's
* default identity. Omit --global to
* set the identity only in this repository.
* unable to auto-detect email address
* (got 'Manto@OMEN_BY-Manto.(none)')
* */
