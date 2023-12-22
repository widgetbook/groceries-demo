import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class AnimationTracker {
  static final Map<String, AnimationController> _animations = {};

  static void addAnimation(String key, AnimationController controller) {
    _animations[key] = controller;
  }

  static void removeAnimation(String key) {
    _animations.remove(key);
  }

  static Map<String, AnimationController> get animations => _animations;
}

class AnimationStateAddon extends WidgetbookAddon<int> {
  AnimationStateAddon({
    required super.name,
  });

  @override
  Widget buildFields(BuildContext context) {
    final entries = AnimationTracker.animations.entries;
    return Text(entries.isNotEmpty ? entries.first.key : 'No animations');
    return ListView(
      children: AnimationTracker.animations.entries.map((entry) {
        return ListTile(
          title: Text(entry.key),
          subtitle: Text('State: ${entry.value.status}'),
        );
      }).toList(),
    );
  }

  @override
  // TODO: implement fields
  List<Field> get fields => [];

  @override
  int valueFromQueryGroup(Map<String, String> group) {
    return 1;
  }
}
