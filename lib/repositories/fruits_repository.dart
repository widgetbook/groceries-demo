import 'data_store.dart';
import 'fruit.dart';

class FruitRepository {
  Future<List<Fruit>> getFruits() async {
    return DataStore.fruits;
  }
}
