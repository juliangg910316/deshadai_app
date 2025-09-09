import 'package:deshadai/domain/entity/salary_income.dart';

class DataChartBuild {
  static List<double> generateYValuesLastWeek(List<SalaryIncome> salary) {
    Map<int, double> yValues = {};

    for (var i = 0; i < 7; i++) {
      yValues[i] = 0.0;
    }

    final now = DateTime.now();
    final day = now.weekday % 7;
    final oneWeekAgo = now.subtract(Duration(days: day));
    final salaryLastWeek = salary
        .where(
          (entry) => entry.date.isAfter(oneWeekAgo) && entry.date.isBefore(now),
        )
        .toList();

    for (var entry in salaryLastWeek) {
      int weekday = entry.date.weekday % 7; // Convert Sunday from 7 to 0
      yValues[weekday] = (yValues[weekday] ?? 0) + entry.salaryIncome;
    }
    yValues[8] = yValues[0] ?? 0;
    yValues.remove(0);

    return yValues.values.toList();
  }
}
