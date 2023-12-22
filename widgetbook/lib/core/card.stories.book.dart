// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final CardComponent = Component<Card>(
  meta: meta,
  stories: [$Default],
);
typedef CardScenario = Scenario<Card>;

class CardStory extends Story<Card> {
  CardStory({
    required super.name,
    required super.args,
    super.setup,
  });
}

class CardArgs extends StoryArgs<Card> {
  CardArgs({required Arg<Widget> child})
      : this.child = child.init(name: 'child');

  CardArgs.fixed({required Widget child}) : this.child = Arg.fixed(child);

  final Arg<Widget> child;

  @override
  List<Arg> get list => [child];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? Card(child: child.value)
        : Card(child: child.valueFromQueryGroup(group));
  }
}
