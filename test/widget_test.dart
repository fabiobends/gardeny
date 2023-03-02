import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gardeny/core/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('This is a widget'), findsOneWidget);
    await tester.tap(find.byIcon(FontAwesomeIcons.sliders));
    await tester.pump();
    expect(find.text('This is a different text'), findsOneWidget);
  });
}
