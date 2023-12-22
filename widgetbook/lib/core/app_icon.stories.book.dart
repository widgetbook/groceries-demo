// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_icon.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final AppIconComponent = Component<AppIcon>(
  meta: meta,
  stories: [$Default],
);
typedef AppIconScenario = Scenario<AppIcon>;

class AppIconStory extends Story<AppIcon> {
  AppIconStory({
    required super.name,
    required super.args,
    super.setup,
  });
}

class AppIconArgs extends StoryArgs<AppIcon> {
  AppIconArgs({
    required Arg<IconData> icon,
    required Arg<void Function()> onPressed,
  })  : this.icon = icon.init(name: 'icon'),
        this.onPressed = onPressed.init(name: 'onPressed');

  AppIconArgs.fixed({
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
        ? AppIcon(
            icon: icon.value,
            onPressed: onPressed.value,
          )
        : AppIcon(
            icon: icon.valueFromQueryGroup(group),
            onPressed: onPressed.valueFromQueryGroup(group),
          );
  }
}
