import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/models/fruit.dart';

Fruit getMango(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsMangoName,
    farm: AppLocalizations.of(context)!.johnDoeFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInCalifornia,
    price: 3.34,
    image: 'assets/fruits/mango2.jpeg',
  );
}

Fruit getAvocado(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsAvocadoName,
    farm: AppLocalizations.of(context)!.widgetbookFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInGermany,
    price: 5.45,
    image: 'assets/fruits/avocado.jpeg',
  );
}

Fruit getBanana(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsBananaName,
    farm: AppLocalizations.of(context)!.widgetbookFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInGermany,
    price: 2.56,
    image: 'assets/fruits/banana2.jpeg',
  );
}

Map<Fruit, ProductOrder> getFruitsMap(BuildContext context) {
  return {
    getMango(context): ProductOrder(quantity: 0, total: 0),
    getAvocado(context): ProductOrder(quantity: 0, total: 0),
    getBanana(context): ProductOrder(quantity: 0, total: 0),
  };
}

List<Fruit> getFruits(BuildContext context) {
  return [
    getMango(context),
    getAvocado(context),
    getBanana(context),
  ];
}
