import 'package:flutter/widgets.dart';

import 'basket_state.dart';

class BasketScope extends InheritedNotifier<BasketState> {
  BasketScope({
    super.key,
    BasketState? state,
    required super.child,
  }) : super(
          notifier: state ?? BasketState(),
        );
}
