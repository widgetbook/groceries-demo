import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppBar)
Widget buildAppBarUseCase(BuildContext context) {
  return const AppBar(
    title: 'Groceries App',
    hasItemsInBasket: true,
  );
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
    required this.hasItemsInBasket,
  });

  final String title;
  final bool hasItemsInBasket;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          const Icon(Icons.menu),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
              ),
            ),
          ),
          Stack(
            children: [
              const Icon(Icons.shopping_bag_outlined),
              if (hasItemsInBasket)
                Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    )),
            ],
          )
        ],
      ),
    );
  }
}
