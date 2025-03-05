import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_6/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  /////////// Screen 1: Integration Tests ///////////////////

  testWidgets('Increment Integration Test', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 1 button
    await tester.tap(find.text("Screen 1: Increment"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Verify counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Verify counter increments
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  //////////// Screen 2: Integration Tests //////////////////

  testWidgets('Converter Integration Test: 3 Feet',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 2 button
    await tester.tap(find.text("Screen 2: Converter"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Find the Text Field and Button Widgets
    final buttonFinder = find.text("Convert");
    final textFieldFinder = find.byType(TextField);

    // Enter text into the field
    await tester.enterText(textFieldFinder, '3');
    // Tap the Convert button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle(); // Wait for animations
    // Verify the expected output
    expect(find.text("Yards: 1.0"), findsOneWidget);
  });

  testWidgets('Converter Integration Test: 12 Feet',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 2 button
    await tester.tap(find.text("Screen 2: Converter"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Find the Text Field and Button Widgets
    final buttonFinder = find.text("Convert");
    final textFieldFinder = find.byType(TextField);

    // Enter text into the field
    await tester.enterText(textFieldFinder, '12');
    // Tap the Convert button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle(); // Wait for animations
    // Verify the expected output
    expect(find.text("Yards: 4.0"), findsOneWidget);
  });

  //////////// Integration Tests: Screen 3 ////////////////

  testWidgets('Has Numbers Integration Test: "abc" Text',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 3 button
    await tester.tap(find.text("Screen 3: Has Numbers"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Find the text field and button
    final textFieldFinder = find.byType(TextField);
    final buttonFinder = find.text('Find Numbers');

    // Enter text into the field
    await tester.enterText(textFieldFinder, 'abc');
    // Tap the Find Numbers button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle(); // Wait for animations
    // Verify the expected output
    expect(find.text('Has Numbers: false'), findsOneWidget);
  });

  testWidgets('Has Numbers Integration Test: "abc123" Text',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 3 button
    await tester.tap(find.text("Screen 3: Has Numbers"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Find the text field and button
    final textFieldFinder = find.byType(TextField);
    final buttonFinder = find.text('Find Numbers');

    // Enter text into the field
    await tester.enterText(textFieldFinder, 'abc123');
    // Tap the Find Numbers button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle(); // Wait for animations
    // Verify the expected output
    expect(find.text('Has Numbers: true'), findsOneWidget);
  });
}
