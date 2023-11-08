class Fruit {
  const Fruit({
    required this.name,
    required this.imageUrl,
    required this.farm,
    required this.origin,
    required this.price,
  });

  final String name;
  final double price;
  final String imageUrl;
  final String farm;
  final String origin;
}
