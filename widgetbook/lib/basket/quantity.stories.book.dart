// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final QuantityComponent = Component<Quantity>(
  meta: meta,
  stories: [$Default],
);
typedef QuantityScenario = Scenario<Quantity>;

class QuantityStory extends Story<Quantity> {
  QuantityStory({
    required super.name,
    QuantityArgs? args,
    super.setup,
  }) : super(args: args ?? QuantityArgs());
}

class QuantityArgs extends StoryArgs<Quantity> {
  QuantityArgs({Arg<int> value = const IntArg(name: 'value')})
      : this.value = value.init(name: 'value');

  QuantityArgs.fixed({int value = 0}) : this.value = Arg.fixed(value);

  final Arg<int> value;

  @override
  List<Arg> get list => [value];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? Quantity(value: value.value)
        : Quantity(value: value.valueFromQueryGroup(group));
  }
}
