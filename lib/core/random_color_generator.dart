import 'dart:math';
import 'dart:ui';

/// [RandomColorGenerator] class to generate random colors.
class RandomColorGenerator {

  /// [random] instance of [Random] class.
  final random = Random();

  /// [maxInt] variable stores the maximum value to generate random colors.
  final int maxInt;

  /// [RandomColorGenerator] Constructor.
  RandomColorGenerator(this.maxInt);

  /// [generateRandomColor] method to generate random colors.
  Color generateRandomColor() => Color(random.nextInt(maxInt));

}
