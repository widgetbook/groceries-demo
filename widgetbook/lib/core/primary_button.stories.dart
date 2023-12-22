import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/next.dart';

part 'primary_button.stories.book.dart';

final meta = Meta<PrimaryButton>();

final $Default = PrimaryButtonStory(
  name: 'Default',
  setup: (context, child) => Padding(
    padding: const EdgeInsets.all(8),
    child: child,
  ),
  args: PrimaryButtonArgs(
    content: const StringArg(value: 'Continue to Shipping'),
  ),
);
