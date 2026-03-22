import 'dart:math';
import 'dart:ui';

/// [RandomColorGenerator] class to generate random colors.
class RandomColorGenerator {

  /// [random] instance of [Random] class.
  final random = Random();

  /// [maxColorRange] variable determines the maximum range of colors.
  static const int maxColorRange = 0x00FFFFFF;

  /// Set [alphaChannel] variable to be fully opaque
  static const int alphaChannel = 0xFF000000;

  /// Method [generateRandomColor] generate random color.
  Color generateRandomColor() => Color(alphaChannel | random
      .nextInt(maxColorRange));

}
