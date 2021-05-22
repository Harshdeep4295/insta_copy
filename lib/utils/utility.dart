class Utility {
  static String getValue(int value) {
    if (value > 999) {
      return (value / 1000).toStringAsFixed(1) + "k";
    }
    return value.toString();
  }
}
