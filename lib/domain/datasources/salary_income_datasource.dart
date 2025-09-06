import '../entity/salary_income.dart';

abstract interface class SalaryIncomeDataSource {
  Future<List<SalaryIncome>> getSalaryIncomes();
  Future<void> addSalaryIncome(SalaryIncome salaryIncome);
  Future<void> updateSalaryIncome(SalaryIncome salaryIncome);
  Future<void> deleteSalaryIncome(int id);
}
