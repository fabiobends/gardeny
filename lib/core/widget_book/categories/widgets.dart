import 'package:gardeny/core/widgets/button.dart';
import 'package:widgetbook/widgetbook.dart';

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
  ],
);
