// This file is just a collection of mocks that tries to mimics a backend,
// since our demo app doesn't have a backend.

import 'fruit/fruit.dart';
import 'user/user.dart';

// Mimics a network request that takes some time to complete.
Future<T> mimicNetworkRequest<T>(T data) {
  return Future.delayed(
    const Duration(seconds: 1),
    () => data,
  );
}

// A mock datastore that the repositories fetch the data from.
// Usually the data will be coming from the backend.
abstract class MockDataStore {
  static const user = User(
    name: 'John Doe',
    isVerified: true,
  );

  static const fruits = [
    Fruit(
      id: 1,
      name: 'Mango',
      farm: 'John Doe Farm',
      origin: 'California',
      imageUrl: 'https://images.unsplash.com/photo-1623930376395-0f3ad22cfac2',
      price: 3.34,
    ),
    Fruit(
      id: 2,
      name: 'Avocado',
      farm: 'Widgetbook Farm',
      origin: 'Germany',
      imageUrl: 'https://images.unsplash.com/photo-1601039641847-7857b994d704',
      price: 5.45,
    ),
    Fruit(
      id: 3,
      name: 'Banana',
      farm: 'Widgetbook Farm',
      origin: 'Germany',
      imageUrl:
          'https://images.unsplash.com/reserve/RNm0KceQ4Gbpb0xldOe7_DSC_0679_2.JPG',
      price: 2.56,
    ),
  ];
}
