// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final BadgeComponent = Component<Badge>(
  meta: meta,
  stories: [$Default],
);
typedef BadgeScenario = Scenario<Badge>;

class BadgeStory extends Story<Badge> {
  BadgeStory({
    required super.name,
    BadgeArgs? args,
    super.setup,
  }) : super(args: args ?? BadgeArgs());
}

class BadgeArgs extends StoryArgs<Badge> {
  BadgeArgs({Arg<int> number = const IntArg(name: 'number')})
      : this.number = number.init(name: 'number');

  BadgeArgs.fixed({int number = 0}) : this.number = Arg.fixed(number);

  final Arg<int> number;

  @override
  List<Arg> get list => [number];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? Badge(number: number.value)
        : Badge(number: number.valueFromQueryGroup(group));
  }
}
