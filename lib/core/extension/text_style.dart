import 'package:flutter/material.dart';

extension TextStyleExtension on Text {
  Text bold() => Text(
    data ?? '',
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.bold),
  );

  Text color(Color c) =>
      Text(data ?? '', style: (style ?? const TextStyle()).copyWith(color: c));

  Text fontSize(double size) => Text(
    data ?? '',
    style: (style ?? const TextStyle()).copyWith(fontSize: size),
  );

  Text underline() => Text(
    data ?? '',
    style: (style ?? const TextStyle()).copyWith(
      decoration: TextDecoration.underline,
    ),
  );
}
