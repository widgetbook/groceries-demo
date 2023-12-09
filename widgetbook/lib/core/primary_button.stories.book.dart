// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_button.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final PrimaryButtonComponent = Component<PrimaryButton>(
  meta: meta,
  stories: [$Default],
);
typedef PrimaryButtonScenario = Scenario<PrimaryButton>;

class PrimaryButtonStory extends Story<PrimaryButton> {
  PrimaryButtonStory({
    required super.name,
    PrimaryButtonArgs? args,
    super.setup,
  }) : super(args: args ?? PrimaryButtonArgs());
}

class PrimaryButtonArgs extends StoryArgs<PrimaryButton> {
  PrimaryButtonArgs({Arg<String> content = const StringArg(name: 'content')})
      : this.content = content.init(name: 'content');

  PrimaryButtonArgs.fixed({String content = ""})
      : this.content = Arg.fixed(content);

  final Arg<String> content;

  @override
  List<Arg> get list => [content];

  @override
  Widget build(
    BuildContext context, [
    Map<String, String>? group,
  ]) {
    return group == null
        ? PrimaryButton(content: content.value)
        : PrimaryButton(content: content.valueFromQueryGroup(group));
  }
}
