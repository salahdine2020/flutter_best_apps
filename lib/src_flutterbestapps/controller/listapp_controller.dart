import 'package:best_flutter_app/src_flutterbestapps/models/list_apps.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var favoriteList = List<AppsList>().obs;

  @override
  void onInit() {
    fetchFavoriteList();
    super.onInit();
  }

  List<AppsList> fetchFavoriteList() {
    var favoritListToadd = [
      AppsList(
        appname: 'Flutter_ecommerce_app',
        description:
            'E-Commerce app is a design implementaion of E-commerce App designed by Imran',
        stras: 1200,
        linkUrl: 'https://github.com/TheAlphamerc/flutter_ecommerce_app',
      ),
      AppsList(
        appname: 'Pokemon Go',
        description:
            'A digital pokemon encyclopedia that categorizes Pokemon on the basis of their abilties, move and powerThe app design is based on Pokedex App designed by Saepul Nahwan',
        stras: 203,
        linkUrl: 'https://github.com/TheAlphamerc/flutter_pokedex',
      ),
      AppsList(
        appname: 'Flutter Smart Cours',
        description:
            'Smart course app is built in flutter. App design is based on Smart Course designed by Nugraha Jati Utama',
        stras: 420,
        linkUrl: 'https://github.com/TheAlphamerc/flutter_smart_course',
      ),
      AppsList(
        appname: 'Flutter WalletAPP',
        description:
            'Smart course app is a design implementaion of Wallet App designed by Muhammad Abdull',
        stras: 170,
        linkUrl: 'https://github.com/TheAlphamerc/flutter_wallet_app',
      ),
      AppsList(
        appname: 'flutter_yatch_booking',
        description:
            'Flutter good looking yatch booking sample app.This sample is based on Yacht-Booking-Service-Application-Payment-Flow designed by RonDesignLab',
        stras: 45,
        linkUrl: 'https://github.com/TheAlphamerc/flutter_yatch_booking',
      ),
      AppsList(
        appname: 'openflutterecommerceapp',
        description:
            'Open Flutter Project E-commerce App is mobile application for e-commerce. We are building a commercially valuable product as an open-source project to make mobile technology accessible for small and medium businesses.',
        stras: 347,
        linkUrl: 'https://github.com/4seer/openflutterecommerceapp',
      ),
      AppsList(
        appname: 'E-commerce-Complete-Flutter-UI',
        description:
            'In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator. The third Episode contains Sign Up and OTP screen. The fourth episode is the most exciting episode because we build our home page on this episode than on the fifth episode we work on our product page, last not least on the 6th episode we build an order screen which has some cool stuff like swipe to remove. At the end 7th episode we build a profile screen.',
        stras: 1300,
        linkUrl:
            'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI',
      ),
      AppsList(
        appname: 'flutter_eCommerce_ui_kit',
        description:
            'A powerful Flutter E-Commerce starter template that bootstraps development of your mobile application. Flutter E-Commerce Starter is a mobile application template with lots of built-in components like sidebar, navigation, slider, cards, form elements, etc - all you need to start building your mobile app faster. Check out demo',
        stras: 187,
        linkUrl: 'https://github.com/Furqankhanzada/flutter_eCommerce_ui_kit',
      ),
       AppsList(
        appname: 'findseat',
        description:
        'A Completed Functional Flutter App - FindSeat (BLoC + Json API + Unit Test + Firebase Auth)',
        stras: 608,
        linkUrl: 'https://github.com/KhoaSuperman/findseat',
      ),
    ];
    favoriteList.assignAll(favoritListToadd);
  }
}
