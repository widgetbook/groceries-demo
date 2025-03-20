import '../mocks.dart';
import 'user.dart';

class UserRepository {
  Future<User> getByToken(int token) async {
    return mimicNetworkRequest(MockDataStore.user);
  }
}
