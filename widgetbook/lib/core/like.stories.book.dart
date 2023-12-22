// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final AnimatedBoxWidgetComponent = Component<AnimatedBoxWidget>(
  meta: meta,
  stories: [$Default],
);
typedef AnimatedBoxWidgetScenario = Scenario<AnimatedBoxWidget>;

class AnimatedBoxWidgetStory extends Story<AnimatedBoxWidget> {
  AnimatedBoxWidgetStory({
    required super.name,
    AnimatedBoxWidgetArgs? args,
    super.setup,
  }) : super(args: args ?? AnimatedBoxWidgetArgs());
}

class AnimatedBoxWidgetArgs extends StoryArgs<AnimatedBoxWidget> {
  AnimatedBoxWidgetArgs();

  AnimatedBoxWidgetArgs.fixed();

  @override
  List<Arg> get list => [];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? const AnimatedBoxWidget()
        : const AnimatedBoxWidget();
  }
}
