import 'package:flutter/material.dart';

import '../../core/core.dart' as core;
import '../../core/quantity_button.dart';
import '../../l10n/app_localizations.dart';
import '../../repositories/fruit.dart';
import '../../theme/theme.dart';
import 'quantity.dart';

class BasketCard extends StatefulWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.count,
    this.onFruitAdded,
    this.onFruitRemoved,
  });

  final Fruit fruit;
  final int count;
  final VoidCallback? onFruitAdded;
  final VoidCallback? onFruitRemoved;

  @override
  State<BasketCard> createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> with TickerProviderStateMixin {
  double get total => widget.fruit.price * widget.count;

  late final AnimationController animationController;
  late final Animation<double> scaleAnimation;

  late final AnimationController zoomController;
  late final Animation<double> zoomInAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    zoomController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 1.1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceInOut),
    );
    zoomInAnimation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(parent: zoomController, curve: Curves.linear),
    );

    zoomController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    zoomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return core.Card(
      child: Padding(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  AppTheme.of(context).radius.extraSmall,
                ),
              ),
              child: ScaleTransition(
                scale: zoomInAnimation,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppTheme.of(context).radius.extraSmall,
                      ),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.fruit.imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: AppTheme.of(context).spacing.medium,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.fruit.name,
                    style: AppTheme.of(context).typography.headingSemibold20,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.extraSmall - 2,
                  ),
                  Text(
                    '\$${widget.fruit.price}/${AppLocalizations.of(context)!.unit}',
                    style: AppTheme.of(context).typography.bodyRegular12,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.medium,
                  ),
                  Row(
                    children: [
                      QuantityButton.remove(
                        onPressed: () {
                          widget.onFruitRemoved?.call();
                          animationController.forward().then(
                                (_) => animationController.reverse(),
                              );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppTheme.of(context).spacing.extraSmall,
                        ),
                        child: ScaleTransition(
                          scale: scaleAnimation,
                          child: Quantity(
                            value: widget.count,
                          ),
                        ),
                      ),
                      QuantityButton.add(
                        onPressed: () {
                          widget.onFruitAdded?.call();
                          animationController.forward().then(
                                (_) => animationController.reverse(),
                              );
                        },
                      ),
                      const Spacer(),
                      Text(
                        '\$${total.toStringAsFixed(2)}',
                        style: AppTheme.of(context).typography.bodySemiBold16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
