import '../entity/salary_income.dart';

abstract interface class SalaryIncomeDataSource {
  Future<List<SalaryIncome>> getSalaryIncomes();
  Future<bool> addSalaryIncome(SalaryIncome salaryIncome);
  Future<bool> updateSalaryIncome(SalaryIncome salaryIncome);
  Future<bool> deleteSalaryIncome(int id);
}
