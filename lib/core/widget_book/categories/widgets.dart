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
            label: context.knobs.text(
              label: 'Label',
              initialValue: 'This is a label',
            ),
            isCTA: context.knobs.boolean(
              label: 'isCTA',
              initialValue: false,
            ),
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
            isPassword: context.knobs.boolean(
              label: 'isPassword',
              initialValue: false,
            ),
            label: context.knobs.text(
              label: 'Label',
              initialValue: 'This is a label',
            ),
            hintText: context.knobs.text(
              label: 'Hint Text',
              initialValue: 'This is a helper text',
            ),
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
              initialValue: 'This is a title',
            ),
            heroImageUrl: context.knobs.text(
              label: 'heroImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            firstText: context.knobs.text(
              label: 'firstText',
              initialValue: 'This plant, also known as ',
            ),
            secondText: context.knobs.text(
              label: 'secondText',
              initialValue: 'latin name',
            ),
            thirdText: context.knobs.text(
              label: 'thirdText',
              initialValue:
                  ', is beautiful. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            ),
          ),
        ),
        WidgetbookUseCase(
          name: 'with Like',
          builder: (context) => ContentCardWithLike(
            avatarImageUrl: context.knobs.text(
              label: 'avatarImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            title: context.knobs.text(
              label: 'title',
              initialValue: 'This is a title',
            ),
            heroImageUrl: context.knobs.text(
              label: 'heroImageUrl',
              initialValue: 'https://picsum.photos/1000',
            ),
            firstText: context.knobs.text(
                label: 'firstText', initialValue: 'This plant, also known as '),
            secondText: context.knobs
                .text(label: 'secondText', initialValue: 'latin name'),
            thirdText: context.knobs.text(
              label: 'thirdText',
              initialValue:
                  ', is beautiful. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            ),
            isLiked: true,
            onTapLike: onTapLike,
          ),
        ),
      ],
    ),
  ],
);
