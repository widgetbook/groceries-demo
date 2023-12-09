// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_card.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final BasketCardComponent = Component<BasketCard>(
  meta: meta,
  stories: [$Default],
);
typedef BasketCardScenario = Scenario<BasketCard>;

class BasketCardStory extends Story<BasketCard> {
  BasketCardStory({
    required super.name,
    required super.args,
    super.setup,
  });
}

class BasketCardArgs extends StoryArgs<BasketCard> {
  BasketCardArgs({
    required Arg<Fruit> fruit,
    Arg<int> count = const IntArg(name: 'count'),
    required Arg<void Function()> onFruitAdded,
    required Arg<void Function()> onFruitRemoved,
  })  : this.fruit = fruit.init(name: 'fruit'),
        this.count = count.init(name: 'count'),
        this.onFruitAdded = onFruitAdded.init(name: 'onFruitAdded'),
        this.onFruitRemoved = onFruitRemoved.init(name: 'onFruitRemoved');

  BasketCardArgs.fixed({
    required Fruit fruit,
    int count = 0,
    required void Function() onFruitAdded,
    required void Function() onFruitRemoved,
  })  : this.fruit = Arg.fixed(fruit),
        this.count = Arg.fixed(count),
        this.onFruitAdded = Arg.fixed(onFruitAdded),
        this.onFruitRemoved = Arg.fixed(onFruitRemoved);

  final Arg<Fruit> fruit;

  final Arg<int> count;

  final Arg<void Function()> onFruitAdded;

  final Arg<void Function()> onFruitRemoved;

  @override
  List<Arg> get list => [
        fruit,
        count,
        onFruitAdded,
        onFruitRemoved,
      ];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? BasketCard(
            fruit: fruit.value,
            count: count.value,
            onFruitAdded: onFruitAdded.value,
            onFruitRemoved: onFruitRemoved.value,
          )
        : BasketCard(
            fruit: fruit.valueFromQueryGroup(group),
            count: count.valueFromQueryGroup(group),
            onFruitAdded: onFruitAdded.valueFromQueryGroup(group),
            onFruitRemoved: onFruitRemoved.valueFromQueryGroup(group),
          );
  }
}
