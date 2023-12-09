// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bar.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final AppBarComponent = Component<AppBar>(
  meta: meta,
  stories: [$Default],
);
typedef AppBarScenario = Scenario<AppBar>;

class AppBarStory extends Story<AppBar> {
  AppBarStory({
    required super.name,
    AppBarArgs? args,
    super.setup,
  }) : super(args: args ?? AppBarArgs());
}

class AppBarArgs extends StoryArgs<AppBar> {
  AppBarArgs({
    Arg<String> title = const StringArg(name: 'title'),
    Arg<int> basketSize = const IntArg(name: 'basketSize'),
  })  : this.title = title.init(name: 'title'),
        this.basketSize = basketSize.init(name: 'basketSize');

  AppBarArgs.fixed({
    String title = "",
    int basketSize = 0,
  })  : this.title = Arg.fixed(title),
        this.basketSize = Arg.fixed(basketSize);

  final Arg<String> title;

  final Arg<int> basketSize;

  @override
  List<Arg> get list => [
        title,
        basketSize,
      ];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? AppBar(
            title: title.value,
            basketSize: basketSize.value,
          )
        : AppBar(
            title: title.valueFromQueryGroup(group),
            basketSize: basketSize.valueFromQueryGroup(group),
          );
  }
}
