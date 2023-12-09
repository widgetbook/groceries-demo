// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_screen.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final BasketScreenComponent = Component<BasketScreen>(
  meta: meta,
  stories: [],
);
typedef BasketScreenScenario = Scenario<BasketScreen>;

class BasketScreenStory extends Story<BasketScreen> {
  BasketScreenStory({
    required super.name,
    required super.args,
    super.setup,
  });
}

class BasketScreenArgs extends StoryArgs<BasketScreen> {
  BasketScreenArgs({
    required Arg<Map<Fruit, ProductOrder>> basket,
    Arg<double> delivery = const DoubleArg(name: 'delivery'),
    Arg<double> subTotal = const DoubleArg(name: 'subTotal'),
  })  : this.basket = basket.init(name: 'basket'),
        this.delivery = delivery.init(name: 'delivery'),
        this.subTotal = subTotal.init(name: 'subTotal');

  BasketScreenArgs.fixed({
    required Map<Fruit, ProductOrder> basket,
    double delivery = 0.0,
    double subTotal = 0.0,
  })  : this.basket = Arg.fixed(basket),
        this.delivery = Arg.fixed(delivery),
        this.subTotal = Arg.fixed(subTotal);

  final Arg<Map<Fruit, ProductOrder>> basket;

  final Arg<double> delivery;

  final Arg<double> subTotal;

  @override
  List<Arg> get list => [
        basket,
        delivery,
        subTotal,
      ];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? BasketScreen(
            basket: basket.value,
            delivery: delivery.value,
            subTotal: subTotal.value,
          )
        : BasketScreen(
            basket: basket.valueFromQueryGroup(group),
            delivery: delivery.valueFromQueryGroup(group),
            subTotal: subTotal.valueFromQueryGroup(group),
          );
  }
}
