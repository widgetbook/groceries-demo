import '../mocks.dart';
import 'user.dart';

class UserRepository {
  Future<User> getUser() async {
    return mimicNetworkRequest(MockDataStore.user);
  }
}
