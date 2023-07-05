import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/basket/widgets/empty_basket_placeholder.dart';
import 'package:groceries_app/basket/widgets/widgets.dart';
import 'package:groceries_app/core/app_bar.dart';
import 'package:groceries_app/core/primary_button.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'filled',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=60-1089&mode=dev',
)
Widget buildFilledBasketScreenUseCase(BuildContext context) {
  final mango = getMango(context);
  final avocado = getAvocado(context);
  return BasketScope(
    state: BasketState(
      data: {
        mango: ProductOrder(quantity: 1, total: mango.price),
        avocado: ProductOrder(quantity: 2, total: avocado.price * 2),
      },
    ),
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          fruits: basketState.basketSummary,
          delivery: basketState.delivery,
          total: basketState.total,
          subTotal: basketState.subtotal,
        );
      },
    ),
  );
}

@UseCase(
  name: 'empty',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2186&mode=dev',
)
Widget buildEmptyBasketScreenUseCase(BuildContext context) {
  return BasketScope(
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          fruits: basketState.basketSummary,
          delivery: basketState.delivery,
          total: basketState.total,
          subTotal: basketState.subtotal,
        );
      },
    ),
  );
}

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.fruits,
    required this.delivery,
    required this.total,
    required this.subTotal,
  });

  final Map<Fruit, ProductOrder> fruits;
  final double delivery;
  final double total;
  final double subTotal;

  Widget _buildEmptyPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: EmptyBasketPlaceholder()),
        PrimaryButton(
          content: AppLocalizations.of(context)!.startShopping,
        ),
      ],
    );
  }

  Widget _buildFilledPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.basketHeadline,
          style: AppTheme.of(context).typography.displayRegular32,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraint) {
              final columns = max(
                1,
                constraint.maxWidth ~/ 350,
              );
              return GridView.count(
                key: ValueKey(fruits),
                crossAxisCount: columns,
                padding: EdgeInsets.zero,
                mainAxisSpacing: AppTheme.of(context).spacing.medium,
                crossAxisSpacing: AppTheme.of(context).spacing.medium,
                // TODO this is a bit of a hack
                // 116 is the height of the BasketCard
                childAspectRatio: constraint.maxWidth / columns / 116,
                children: [
                  for (final fruit in fruits.keys)
                    BasketCard(
                      numberOfFruits: fruits[fruit]!.quantity,
                      fruit: fruit,
                      onFruitAdded: (fruit) =>
                          BasketState.of(context).addFruit(fruit),
                      onFruitRemoved: (fruit) =>
                          BasketState.of(context).removeFruit(fruit),
                    ),
                ],
              );
            },
          ),
        ),
        Summary(
          total: total,
          delivery: delivery,
          subTotal: subTotal,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        PrimaryButton(
          content: AppLocalizations.of(context)!.basketContinueToShipping,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: 'Groceries App',
          numberOfItemsInBasket: fruits.length,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.of(context).spacing.medium,
              ),
              child: fruits.isEmpty
                  ? _buildEmptyPage(context)
                  : _buildFilledPage(context)),
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.medium,
        ),
      ],
    );
  }
}
