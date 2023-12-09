import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/next.dart';

part 'app_bar.stories.book.dart';

final meta = Meta<AppBar>();

final $Default = AppBarStory(
  name: 'Default',
  args: AppBarArgs(
    title: const StringArg(value: 'Groceries App'),
    basketSize: const IntArg(value: 1),
  ),
);
