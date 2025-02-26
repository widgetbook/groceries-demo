import 'fruit.dart';

// This is a mock of a database that has some fruits.
abstract class DataStore {
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
