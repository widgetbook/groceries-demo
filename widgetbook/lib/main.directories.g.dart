// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/basket/basket_card.dart' as _i3;
import 'package:widgetbook_workspace/basket/basket_screen.dart' as _i2;
import 'package:widgetbook_workspace/basket/empty_basket_placeholder.dart'
    as _i4;
import 'package:widgetbook_workspace/basket/quantity.dart' as _i5;
import 'package:widgetbook_workspace/basket/summary.dart' as _i6;
import 'package:widgetbook_workspace/core/app_bar.dart' as _i7;
import 'package:widgetbook_workspace/core/app_icon.dart' as _i8;
import 'package:widgetbook_workspace/core/badge.dart' as _i9;
import 'package:widgetbook_workspace/core/card.dart' as _i10;
import 'package:widgetbook_workspace/core/primary_button.dart' as _i11;
import 'package:widgetbook_workspace/core/quantity_button.dart' as _i12;
import 'package:widgetbook_workspace/home/add_basket_button.dart' as _i14;
import 'package:widgetbook_workspace/home/fruit_card.dart' as _i15;
import 'package:widgetbook_workspace/home/home_screen.dart' as _i13;
import 'package:widgetbook_workspace/theme/colors.dart' as _i16;
import 'package:widgetbook_workspace/theme/spacing.dart' as _i17;
import 'package:widgetbook_workspace/theme/typography.dart' as _i18;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'basket',
    children: [
      _i1.WidgetbookFolder(
        name: 'screen',
        children: [
          _i1.WidgetbookComponent(
            name: 'BasketScreen',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'empty',
                builder: _i2.buildEmptyBasketScreenUseCase,
              ),
              _i1.WidgetbookUseCase(
                name: 'filled',
                builder: _i2.buildFilledBasketScreenUseCase,
              ),
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'BasketCard',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i3.buildBasketCardUseCase,
              )
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'EmptyBasketPlaceholder',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i4.buildEmptyBasketPlaceholderUseCase,
              )
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'Quantity',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i5.buildQuantityUseCase,
              )
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'Summary',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i6.buildSummaryUseCase,
              )
            ],
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'core',
    children: [
      _i1.WidgetbookComponent(
        name: 'AppBar',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i7.appBarUseCase,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'AppIcon',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i8.buildAppIconUseCase,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'Badge',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i9.badge,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'Card',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i10.card,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'PrimaryButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'default',
            builder: _i11.buildContinueButtonUseCase,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'QuantityButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Add',
            builder: _i12.buildQuantityButtonAddUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Remove',
            builder: _i12.buildQuantityButtonRemoveUseCase,
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'home',
    children: [
      _i1.WidgetbookFolder(
        name: 'screen',
        children: [
          _i1.WidgetbookComponent(
            name: 'HomeScreen',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Home',
                builder: _i13.buildHomeUseCase,
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'AddBasketButton',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i14.buildIconButtonUseCase,
              )
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'FruitCard',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default',
                builder: _i15.fruitCard,
              )
            ],
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'theme',
    children: [
      _i1.WidgetbookComponent(
        name: 'AppThemeData',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Color',
            builder: _i16.buildColorUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Spacing',
            builder: _i17.buildWidgetbookSpacingUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Typography',
            builder: _i18.buildTypographyThemeDataUseCase,
          ),
        ],
      )
    ],
  ),
];
