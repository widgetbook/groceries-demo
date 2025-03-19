import '../mocks.dart';
import 'fruit.dart';

class FruitRepository {
  Future<List<Fruit>> getAll() async {
    return mimicNetworkRequest(MockDataStore.fruits);
  }
}
