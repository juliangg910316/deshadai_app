import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  // Agrega padding de todos lados
  Widget withPaddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  // Agrega padding de manera simétrica
  Widget withPaddingSymmetric({double horizontal = 0, double vertical = 0}) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );
}
