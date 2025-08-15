import 'dart:async';

import 'package:widgetbook/widgetbook.dart';

/// All screens are a combination of "views".
/// A screen can be in one of four states:
/// - loading: The screen is currently loading data.
/// - empty: The screen loaded has no data to display.
/// - data: The screen loaded data and is displaying it.
/// - error: The screen failed to load data.
enum ViewState { loading, empty, data, error }

class ViewStateKnob extends Knob<ViewState> {
  ViewStateKnob({
    required this.allowedValues,
  }) : super(
         label: 'state',
         initialValue: allowedValues.contains(ViewState.data)
             ? ViewState.data
             : allowedValues.first,
       );

  final List<ViewState> allowedValues;

  @override
  List<Field> get fields {
    return [
      ObjectDropdownField<ViewState>(
        name: 'state',
        initialValue: initialValue,
        values: allowedValues,
      ),
    ];
  }

  @override
  ViewState valueFromQueryGroup(Map<String, String> group) {
    return valueOf<ViewState>(label, group)!;
  }
}

extension ViewStateKnobBuilder on KnobsBuilder {
  ViewState viewState({
    List<ViewState>? allowedValues,
  }) {
    return onKnobAdded(
      ViewStateKnob(
        allowedValues: allowedValues ?? ViewState.values,
      ),
    )!;
  }
}

extension ViewStateMapper on ViewState {
  FutureOr<T> map<T>({
    required T data,
    T? empty,
  }) {
    return switch (this) {
      ViewState.loading => Completer<T>().future,
      ViewState.error => Future.error('Error'),
      ViewState.data => data,
      ViewState.empty => empty ?? (throw Exception('No empty state provided')),
    };
  }
}
