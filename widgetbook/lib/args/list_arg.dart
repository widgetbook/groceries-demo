import 'package:widgetbook/next.dart';
import 'package:widgetbook/widgetbook.dart';

class ListArg<T> extends Arg<T> {
  ListArg({
    required super.value,
    required this.values,
    super.name,
  }) : activeValue = value;

  final List<T> values;
  T activeValue;

  @override
  List<Field> get fields => [
        ListField(
          name: name,
          values: values,
          initialValue: value,
        ),
      ];

  @override
  Arg<T> init({required String name}) {
    return ListArg(
      value: value,
      values: values,
      name: name,
    );
  }

  @override
  T valueFromQueryGroup(Map<String, String> group) {
    return valueOf(name, group)!;
  }
}
