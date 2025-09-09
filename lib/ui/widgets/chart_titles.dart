import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartTitles extends StatelessWidget {
  const ChartTitles({super.key, required this.value, required this.meta});

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: Colors.blue.shade700,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'S';
        break;
      case 1:
        text = 'T';
        break;
      case 2:
        text = 'Q';
        break;
      case 3:
        text = 'Q';
        break;
      case 4:
        text = 'S';
        break;
      case 5:
        text = 'S';
        break;
      case 6:
        text = 'D';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }
}
