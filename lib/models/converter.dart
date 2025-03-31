class Converter {
  // CONVERTING FEET TO METERS
  static double feet_to_meters(double ft) {
    String tmp = (ft * 0.3048).toStringAsFixed(4);
    return double.parse(tmp);
  }

  // CONVERTING MILES TO KILOMETERS
  static double miles_to_km(double m) {
    String tmp = (m * 1.6093).toStringAsFixed(4);
    return double.parse(tmp);
  }

  // CONVERTING POUNDS TO KILOGRAMS
  static double lb_to_kg(double lb) {
    String tmp = (lb / 2.2046).toStringAsFixed(4);
    return double.parse(tmp);
  }

  // CONVERTING OUNCES TO GRAMS
  static double ounces_to_grams(double oz) {
    String tmp = (oz * 28.3495).toStringAsFixed(4);
    return double.parse(tmp);
  }
}
