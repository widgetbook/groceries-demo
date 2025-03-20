enum AppRoute {
  about('/about'),
  shop('/shop'),
  basket('/basket'),
  account('/account');

  const AppRoute(this.path);

  final String path;

  static AppRoute? byPath(String path) {
    try {
      return values.firstWhere(
        (route) => route.path == path,
      );
    } catch (e) {
      return null;
    }
  }
}
