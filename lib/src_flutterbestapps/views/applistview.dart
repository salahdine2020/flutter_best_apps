import 'package:best_flutter_app/src_flutterbestapps/config/textstyle.dart';
import 'package:best_flutter_app/src_flutterbestapps/controller/favoritelistapp.dart';
import 'package:best_flutter_app/src_flutterbestapps/controller/listapp_controller.dart';
import 'package:best_flutter_app/src_flutterbestapps/models/list_apps.dart';
import 'package:best_flutter_app/src_flutterbestapps/views/favoritelist.dart';
import 'package:best_flutter_app/src_flutterbestapps/views/webviewpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controllerfavorite = Get.put(FavoriteAddedController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Best App ✨',
          style: TextStyles().nameappBar,
        ),
        //centerTitle: true,
        actions: [
          IconButton(
            icon: Obx(() => Icon(
                  Icons.favorite,
                  color: controllerfavorite.favoriteListadded.length == 0
                      ? Colors.grey.withOpacity(.3)
                      : Colors.redAccent,
                  size: 30,
                )), // change in red when list of favorite contain some apps
            onPressed: () {
              // code base on GetX state Managment
              Get.to(
                FoavoriteAppListView(
                  listapp: controllerfavorite.favoriteListadded,
                ),
              );
            },
          )
        ],
      ),
      body: ListPresntation(),
    );
  }
}

class ListPresntation extends StatelessWidget {
  //final favoritelistcontroller = Get.put(FavoriteController());
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteController());
    final controllerfavorite = Get.put(FavoriteAddedController());
    return ListView.builder(
        itemCount: controller.favoriteList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: Text(
                controller.favoriteList[index].appname.toLowerCase().toString(),
                style: TextStyles().nameapps,
              ),
              trailing: IconButton(
                icon: Icon(Icons.launch),
                onPressed: () {
                  // code to open an webView linkUrl
                  Get.to(
                    WebViewPage(
                      urlLink: controller.favoriteList[index].linkUrl,
                    ),
                  );
                },
              ),
              children: [
                ListTile(
                    title: Text(
                        '${controller.favoriteList[index].stras} ⭐️'), // stars var
                    subtitle: Text(
                      controller.favoriteList[index].description.toString(),
                    ), // description
                    trailing: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          // first click
                          if (count == 0 || count % 2 == 0) {
                            controllerfavorite
                                .addToList(controller.favoriteList[index]);
                            //controllerfavorite.choice = true;
                            // choice = true;
                          }
                          // seconde click
                          else {
                            controllerfavorite
                                .deletFromList(controller.favoriteList[index]);
                            //controllerfavorite.choice = false;
                            // choice = false;
                          }
                          count++;
                          print(controllerfavorite.favoriteListadded);
                        })),
              ],
            ),
          );
        });
  }
}
