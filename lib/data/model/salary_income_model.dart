import 'package:objectbox/objectbox.dart';

// ignore_for_file: public_member_api_docs

@Entity()
class SalaryIncomeModel {
  int id;

  double salaryIncome;
  String? comment;

  /// Note: Stored in milliseconds without time zone info.
  DateTime date;

  SalaryIncomeModel({
    this.id = 0,
    this.comment,
    this.salaryIncome = 0.0,
    DateTime? date,
  }) : date = date ?? DateTime.now();
}
