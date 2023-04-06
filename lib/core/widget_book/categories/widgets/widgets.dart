import 'package:flutter/foundation.dart';
import 'package:gardeny/core/widgets/content_card.dart';
import 'package:widgetbook/widgetbook.dart';

import 'cases.dart';

void onTapLike(bool value) {
  if (kDebugMode) {
    print("current state: $value");
  }
}

WidgetbookCategory widgetsCategory = WidgetbookCategory(
  name: 'Widgets',
  widgets: [
    WidgetbookComponent(
      name: 'Button',
      useCases: [
        WidgetbookUseCase(
          name: 'Default',
          builder: getButtonCase,
        )
      ],
    ),
    WidgetbookComponent(
      name: 'InputField',
      useCases: [
        WidgetbookUseCase(
          name: 'Default',
          builder: getInputFieldCase,
        )
      ],
    ),
    WidgetbookComponent(
      name: 'ContentCard',
      useCases: [
        WidgetbookUseCase(
          name: 'Default',
          builder: getContentCardCase,
        ),
        WidgetbookUseCase(
          name: 'with Like',
          builder: (context) => getContentCardCase(
            context,
            iconState: LikeIconState(
              onTapLike: onTapLike,
              isLiked: context.knobs.boolean(
                label: 'isLiked (initial)',
                initialValue: true,
              ),
            ),
          ),
        ),
      ],
    ),
    WidgetbookComponent(
      name: 'TitleAndDescription',
      useCases: [
        WidgetbookUseCase(
          name: 'Default',
          builder: getTitleAndDescription,
        ),
      ],
    ),
  ],
);
