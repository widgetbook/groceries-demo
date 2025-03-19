import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'basket.dart';
import 'basket_notifier.dart';

final basketProvider = NotifierProvider<BasketNotifier, Basket>(
  BasketNotifier.new,
);
