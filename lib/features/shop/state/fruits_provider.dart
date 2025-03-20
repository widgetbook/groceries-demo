import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';

final fruitsProvider = FutureProvider<List<Fruit>>((ref) async {
  final repository = FruitRepository();
  return repository.getAll();
});
