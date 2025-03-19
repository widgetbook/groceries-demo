enum AppRoute {
  about('/about'),
  shop('/shop'),
  basket('/basket'),
  account('/account');

  const AppRoute(this.path);

  final String path;
}
