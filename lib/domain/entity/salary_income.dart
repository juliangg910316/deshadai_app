import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_income.freezed.dart';

@freezed
abstract class SalaryIncome with _$SalaryIncome {
  factory SalaryIncome({
    int? id,
    required double salaryIncome,
    String? comment,
    required DateTime date,
  }) = _SalaryIncome;
}
