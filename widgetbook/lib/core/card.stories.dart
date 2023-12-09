import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook/next.dart';

part 'card.stories.book.dart';

final meta = Meta<Card>();

CardStory $Default = CardStory(
  name: 'Default',
  args: CardArgs(
    child: Arg.fixed(
      Builder(
        // TODO remove this once supported
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'This is some text',
              style: AppTheme.of(context).typography.bodyMedium16,
            ),
          );
        },
      ),
    ),
  ),
);
