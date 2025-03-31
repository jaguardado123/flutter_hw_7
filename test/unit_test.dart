import 'package:test/test.dart';
import 'package:flutter_hw_7/models/converter.dart';

void main() {
  // WRITE UNIT TESTS TO TEST FUNCTIONS
  group('Test Feet to Meters', () {
    test('Test 5 feet', () {
      // Testing converting 5 ft to 1.524 m
      expect(Converter.feet_to_meters(5), 1.524);
    });
  });

// WRITE UNIT TESTS TO TEST FUNCTIONS
  group('Test Miles to Kilometers', () {});

// WRITE UNIT TESTS TO TEST FUNCTIONS
  group('Test Pounds to Kilograms', () {});

// WRITE UNIT TESTS TO TEST FUNCTIONS
  group('Test Ounces to Grams', () {});
}
