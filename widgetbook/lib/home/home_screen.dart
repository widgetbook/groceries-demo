import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/home/screen/home_screen.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Home',
  type: HomeScreen,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=70-891&mode=dev',
)
Widget buildHomeUseCase(BuildContext context) {
  return BasketScope(
    child: const HomeScreen(
      fruits: DataStore.fruits,
    ),
  );
}
