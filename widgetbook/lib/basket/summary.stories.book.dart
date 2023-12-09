// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final SummaryComponent = Component<Summary>(
  meta: meta,
  stories: [],
);
typedef SummaryScenario = Scenario<Summary>;

class SummaryStory extends Story<Summary> {
  SummaryStory({
    required super.name,
    SummaryArgs? args,
    super.setup,
  }) : super(args: args ?? SummaryArgs());
}

class SummaryArgs extends StoryArgs<Summary> {
  SummaryArgs({
    Arg<double> subTotal = const DoubleArg(name: 'subTotal'),
    Arg<double> delivery = const DoubleArg(name: 'delivery'),
  })  : this.subTotal = subTotal.init(name: 'subTotal'),
        this.delivery = delivery.init(name: 'delivery');

  SummaryArgs.fixed({
    double subTotal = 0.0,
    double delivery = 0.0,
  })  : this.subTotal = Arg.fixed(subTotal),
        this.delivery = Arg.fixed(delivery);

  final Arg<double> subTotal;

  final Arg<double> delivery;

  @override
  List<Arg> get list => [
        subTotal,
        delivery,
      ];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? Summary(
            subTotal: subTotal.value,
            delivery: delivery.value,
          )
        : Summary(
            subTotal: subTotal.valueFromQueryGroup(group),
            delivery: delivery.valueFromQueryGroup(group),
          );
  }
}
