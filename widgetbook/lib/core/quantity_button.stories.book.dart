// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_button.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final QuantityButtonComponent = Component<QuantityButton>(
  meta: meta,
  stories: [
    $Default,
    $Add,
    $Remove,
  ],
);
typedef QuantityButtonScenario = Scenario<QuantityButton>;

class QuantityButtonStory extends Story<QuantityButton> {
  QuantityButtonStory({
    required super.name,
    required super.args,
    super.setup,
  });
}

class QuantityButtonArgs extends StoryArgs<QuantityButton> {
  QuantityButtonArgs({
    required Arg<IconData> icon,
    required Arg<void Function()> onPressed,
  })  : this.icon = icon.init(name: 'icon'),
        this.onPressed = onPressed.init(name: 'onPressed');

  QuantityButtonArgs.fixed({
    required IconData icon,
    required void Function() onPressed,
  })  : this.icon = Arg.fixed(icon),
        this.onPressed = Arg.fixed(onPressed);

  final Arg<IconData> icon;

  final Arg<void Function()> onPressed;

  @override
  List<Arg> get list => [
        icon,
        onPressed,
      ];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? QuantityButton(
            icon: icon.value,
            onPressed: onPressed.value,
          )
        : QuantityButton(
            icon: icon.valueFromQueryGroup(group),
            onPressed: onPressed.valueFromQueryGroup(group),
          );
  }
}
