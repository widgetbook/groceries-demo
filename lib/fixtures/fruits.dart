import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/models/fruit.dart';

Fruit getMango(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsMangoName,
    farm: AppLocalizations.of(context)!.johnDoeFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInCalifornia,
    price: 3.34,
    image: 'assets/fruits/mango.jpeg',
  );
}

Fruit getAvocado(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsAvocadoName,
    farm: AppLocalizations.of(context)!.widgetbookFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInGermany,
    price: 5.45,
    image: 'assets/fruits/mango.jpeg',
  );
}

Fruit getBanana(BuildContext context) {
  return Fruit(
    name: AppLocalizations.of(context)!.fruitsBananaName,
    farm: AppLocalizations.of(context)!.widgetbookFarm,
    grownIn: AppLocalizations.of(context)!.fruitsGrownInGermany,
    price: 2.56,
    image: 'assets/fruits/mango.jpeg',
  );
}

List<Fruit> getFruits(BuildContext context) {
  return [
    getMango(context),
    getAvocado(context),
    getBanana(context),
  ];
}
