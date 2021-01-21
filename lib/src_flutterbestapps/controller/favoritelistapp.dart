import 'package:best_flutter_app/src_flutterbestapps/models/list_apps.dart';
import 'package:get/get.dart';

class FavoriteAddedController extends GetxController {
  var favoriteListadded = List<AppsList>().obs;
  var choice = false.obs;
  addToList(AppsList item) {
    favoriteListadded.add(item);
    choice = true.obs;
  }

  deletFromList(AppsList item) {
    favoriteListadded.remove(item);
    choice = false.obs;
  }
}
