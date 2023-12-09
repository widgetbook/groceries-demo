import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:groceries_app/repositories/fruit.dart';
import 'package:widgetbook/next.dart';

import '../args/list_arg.dart';

part 'basket_card.stories.book.dart';

final meta = Meta<BasketCard>();

final $Default = BasketCardStory(
  name: 'Default',
  setup: (context, child) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: child,
    );
  },
  args: BasketCardArgs(
    fruit: ListArg(
      values: DataStore.fruits,
      value: DataStore.fruits.first,
    ),
    count: const IntArg(),
    onFruitAdded: Arg.fixed(() {}),
    onFruitRemoved: Arg.fixed(() {}),
  ),
);
