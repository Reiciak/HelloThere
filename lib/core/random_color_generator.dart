import 'dart:math';
import 'dart:ui';

/// [RandomColorGenerator] class to generate random colors.
class RandomColorGenerator {

  /// [_random] instance of [Random] class.
  final _random = Random();

  /// [_maxColorRange] variable determines the maximum range of colors.
  static const int _maxColorRange = 0x01000000;

  /// Set [_alphaChannel] variable to be fully opaque
  static const int _alphaChannel = 0xFF000000;

  /// Method [generateRandomColor] generate random color.
  Color generateRandomColor() => Color( _alphaChannel | _random
      .nextInt(_maxColorRange));

}
