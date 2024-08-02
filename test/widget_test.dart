// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifetracker/main.dart';

void main() {
  testWidgets('Test Expense Addition', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Expense: 0'), findsOne);
    expect(find.text('Expense: 1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Expense: 0'), findsNothing);
    expect(find.text('Expense: 1'), findsOne);
  });

  testWidgets('Test Income Addition', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Income: 0'), findsOne);
    expect(find.text('Income: 1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('Income: 1'), findsOne);
    expect(find.text('Income: 0'), findsNothing);
  });
}
