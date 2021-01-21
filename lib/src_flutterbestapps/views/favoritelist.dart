import 'package:best_flutter_app/src_flutterbestapps/controller/favoritelistapp.dart';
import 'package:best_flutter_app/src_flutterbestapps/models/list_apps.dart';
import 'package:best_flutter_app/src_flutterbestapps/views/webviewpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoavoriteAppListView extends StatelessWidget {
  List<AppsList> listapp;
  FoavoriteAppListView({this.listapp});
  @override
  Widget build(BuildContext context) {
    final controllerfavorite = Get.put(FavoriteAddedController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('FavoritList'),
      ),
      body: Obx( () =>  Container(
        child: ListView.builder(
            itemCount: listapp.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(listapp[i].appname),
                trailing: IconButton(
                    icon: Icon(Icons.launch),
                    onPressed: () {
                      // go into web page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WebViewPage(
                              urlLink: listapp[i].linkUrl,
                            ),
                          ));
                    }),
                    leading: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // go into web page
                      controllerfavorite.deletFromList(controllerfavorite.favoriteListadded[i]);
                    }),
              );
            }),
      )),
    );
  }
}
