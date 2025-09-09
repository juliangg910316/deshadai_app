import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/util/data_chart_build.dart';
import '../../domain/entity/salary_income.dart';
import 'chart_titles.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key, required this.salaries});

  final List<SalaryIncome> salaries;

  @override
  Widget build(BuildContext context) {
    final yValues = DataChartBuild.generateYValuesLastWeek(salaries);
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: yValues.asMap().entries.map((entry) {
          int index = entry.key;
          double value = entry.value;
          return BarChartGroupData(
            x: index,
            barRods: [BarChartRodData(toY: value, gradient: _barsGradient)],
            showingTooltipIndicators: [0],
          );
        }).toList(),
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 400,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem:
          (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
            );
          },
    ),
  );

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: (value, meta) => ChartTitles(value: value, meta: meta),
      ),
    ),
    leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  LinearGradient get _barsGradient => LinearGradient(
    colors: [Colors.blue.shade700, Colors.cyan],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  // List<BarChartGroupData> get barGroups => [
  //   BarChartGroupData(
  //     x: 0,
  //     barRods: [BarChartRodData(toY: 208, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 1,
  //     barRods: [BarChartRodData(toY: 310, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 2,
  //     barRods: [BarChartRodData(toY: 114, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 3,
  //     barRods: [BarChartRodData(toY: 215, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 4,
  //     barRods: [BarChartRodData(toY: 213, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 5,
  //     barRods: [BarChartRodData(toY: 310, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  //   BarChartGroupData(
  //     x: 6,
  //     barRods: [BarChartRodData(toY: 116, gradient: _barsGradient)],
  //     showingTooltipIndicators: [0],
  //   ),
  // ];
}
