// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:groceries_app/basket/basket_card.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/basket/quantity.dart';
import 'package:groceries_app/basket/screen/basket_screen.dart';
import 'package:groceries_app/core/app_bar.dart';
import 'package:groceries_app/core/app_icon.dart';
import 'package:groceries_app/core/badge.dart';
import 'package:groceries_app/core/card.dart';
import 'package:groceries_app/core/continue_button.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/core/quantity_button.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/home/screen/home_screen.dart';
import 'package:groceries_app/home/widgets/add_basket_button.dart';
import 'package:groceries_app/home/widgets/fruit_card.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:groceries_app/widgetbook.colors.dart';
import 'package:groceries_app/widgetbook.spacing.dart';
import 'package:widgetbook/widgetbook.dart';

final directories = [
  WidgetbookFolder(
    name: 'core',
    children: [
      WidgetbookComponent(
        name: 'AppBar',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => buildAppBarUseCase(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Badge',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => badge(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Card',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => card(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'QuantityButton',
        useCases: [
          WidgetbookUseCase(
            name: 'Add',
            builder: (context) => buildQuantityButtonAddUseCase(context),
          ),
          WidgetbookUseCase(
            name: 'Remove',
            builder: (context) => buildQuantityButtonRemoveUseCase(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'ContinueButton',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => buildContinueButtonUseCase(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'AppIcon',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => buildAppIconUseCase(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'basket',
    children: [
      WidgetbookComponent(
        name: 'BasketCard',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => buildBasketCardUseCase(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Quantity',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => buildQuantityUseCase(context),
          ),
        ],
      ),
      WidgetbookFolder(
        name: 'screen',
        children: [
          WidgetbookComponent(
            name: 'BasketScreen',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) => buildBasketScreenUseCase(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'home',
    children: [
      WidgetbookFolder(
        name: 'widgets',
        children: [
          WidgetbookComponent(
            name: 'AddBasketButton',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) => buildIconButtonUseCase(context),
              ),
            ],
          ),
          WidgetbookComponent(
            name: 'FruitCard',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) => fuitCard(context),
              ),
            ],
          ),
        ],
      ),
      WidgetbookFolder(
        name: 'screen',
        children: [
          WidgetbookComponent(
            name: 'HomeScreen',
            useCases: [
              WidgetbookUseCase(
                name: 'Home',
                builder: (context) => buildHomeUseCase(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'theme',
    children: [
      WidgetbookComponent(
        name: 'SpacingThemeData',
        useCases: [
          WidgetbookUseCase(
            name: 'Data',
            builder: (context) => buildWidgetbookSpacingUseCase(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'AppThemeData',
        useCases: [
          WidgetbookUseCase(
            name: 'Color',
            builder: (context) => buildColorUseCase(context),
          ),
        ],
      ),
    ],
  ),
];
