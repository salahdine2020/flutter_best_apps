class AppsList {
  final String appname;
  final String description;
  final int stras;
  final String linkUrl;
  AppsList({
    this.appname,
    this.description,
    this.stras,
    this.linkUrl,
  });

  static List<AppsList> fetchAll() {
    return [
      AppsList(
        appname: 'Flutter_ecommerce_app',
        description:
            'E-Commerce app is a design implementaion of E-commerce App designed by Imran',
        stras: 12000,
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
    ];
  }
}
