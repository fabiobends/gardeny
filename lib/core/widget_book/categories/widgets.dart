import 'package:flutter/foundation.dart';
import 'package:gardeny/core/widgets/button.dart';
import 'package:gardeny/core/widgets/content_card.dart';
import 'package:gardeny/core/widgets/input_field.dart';
import 'package:widgetbook/widgetbook.dart';

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
          name: 'Regular',
          builder: (context) => Button(
            onPressed: () {},
            label: context.knobs.text(label: 'Label'),
            isCTA: context.knobs.boolean(label: 'isCTA'),
          ),
        ),
      ],
    ),
    WidgetbookComponent(
      name: 'InputField',
      useCases: [
        WidgetbookUseCase(
          name: 'Regular',
          builder: (context) => InputField(
            isPassword: context.knobs.boolean(label: 'isPassword'),
            label: context.knobs.text(label: 'Label'),
            hintText: context.knobs.text(label: 'Hint Text'),
          ),
        ),
      ],
    ),
    WidgetbookComponent(
      name: 'Card',
      useCases: [
        WidgetbookUseCase(
          name: 'Regular',
          builder: (context) => ContentCard(
            avatarImageUrl: context.knobs.text(
              label: 'avatarImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            title: context.knobs.text(
              label: 'title',
            ),
            heroImageUrl: context.knobs.text(
              label: 'heroImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            firstText: context.knobs.text(label: 'firstText'),
            secondText: context.knobs.text(label: 'secondText'),
            thirdText: context.knobs.text(label: 'thirdText'),
          ),
        ),
        WidgetbookUseCase(
          name: 'with Like',
          builder: (context) => ContentCardWithLike(
            avatarImageUrl: context.knobs.text(
              label: 'avatarImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            title: context.knobs.text(label: 'title'),
            heroImageUrl: context.knobs.text(
              label: 'heroImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            firstText: context.knobs.text(label: 'firstText'),
            secondText: context.knobs.text(label: 'secondText'),
            thirdText: context.knobs.text(label: 'thirdText'),
            isLiked: true,
            onTapLike: onTapLike,
          ),
        ),
      ],
    ),
  ],
);
