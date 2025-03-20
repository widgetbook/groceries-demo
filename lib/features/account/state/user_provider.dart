import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';

final userProvider = FutureProvider<User>((ref) async {
  final repository = UserRepository();

  // In a real app, you would get the token from the local storage
  return repository.getByToken(0);
});
