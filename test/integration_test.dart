import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_7/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // SCREEN 1 INTEGRATION TESTS
  testWidgets('Integration Test: Feet to Meters', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Tap Screen 2 button
    await tester.tap(find.text("Screen 1: Feet to Meters"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // Find the Text Field and Button Widgets
    final buttonFinder = find.text("Convert");
    final textFieldFinder = find.byType(TextField);

    // Enter text into the field
    await tester.enterText(textFieldFinder, '5');
    // Tap the Convert button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle(); // Wait for animations
    // Verify the expected output
    expect(find.text("Meters: 1.524"), findsOneWidget);
  });

// SCREEN 2 INTEGRATION TESTS
  testWidgets(
      'Integration Test: Miles to Kilometers', (WidgetTester tester) async {});

// SCREEN 3 INTEGRATION TESTS
  testWidgets(
      'Integration Test: Pounds to Kilograms', (WidgetTester tester) async {});

// SCREEN 4 INTEGRATION TESTS
  testWidgets(
      'Integration Test: Ounces to Grams', (WidgetTester tester) async {});
}
