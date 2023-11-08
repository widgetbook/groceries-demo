import 'fruit.dart';

abstract class DataStore {
  static const fruits = [
    Fruit(
      name: 'Mango',
      farm: 'John Doe Farm',
      origin: 'California',
      imageUrl: 'https://images.unsplash.com/photo-1623930376395-0f3ad22cfac2',
      price: 3.34,
    ),
    Fruit(
      name: 'Avocado',
      farm: 'Widgetbook Farm',
      origin: 'Germany',
      imageUrl: 'https://images.unsplash.com/photo-1601039641847-7857b994d704',
      price: 5.45,
    ),
    Fruit(
      name: 'Banana',
      farm: 'Widgetbook Farm',
      origin: 'Germany',
      imageUrl:
          'https://images.unsplash.com/reserve/RNm0KceQ4Gbpb0xldOe7_DSC_0679_2.JPG',
      price: 2.56,
    ),
  ];
}
