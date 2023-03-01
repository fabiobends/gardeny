import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory widgetsCategory = WidgetbookCategory(
  name: 'Widgets',
  widgets: [
    WidgetbookComponent(
      name: 'Button',
      useCases: [
        WidgetbookUseCase(
          name: 'Elevated',
          builder: (context) => ElevatedButton(
            onPressed: () {},
            child: Text(
              context.knobs.text(
                label: 'Hello',
              ),
            ),
          ),
        ),
      ],
    ),
  ],
);
