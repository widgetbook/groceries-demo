import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/home/home.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Home',
  type: HomeScreen,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6802-3998&t=OwNskhPgyoe2Fkcc-4",
)
Widget buildHomeUseCase(BuildContext context) {
  return BasketScope(
    child: const HomeScreen(
      fruits: DataStore.fruits,
    ),
  );
}
