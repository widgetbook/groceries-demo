import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/next.dart';

part 'app_icon.stories.book.dart';

final meta = Meta<AppIcon>();

final $Default = AppIconStory(
  name: 'Default',
  args: AppIconArgs.fixed(
    icon: Icons.shopping_bag_outlined,
    onPressed: () {},
  ),
);
