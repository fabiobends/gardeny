import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gardeny/core/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('This is a widget'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.change_circle));
    await tester.pump();
    expect(find.text('This is a different text'), findsOneWidget);
  });
}
