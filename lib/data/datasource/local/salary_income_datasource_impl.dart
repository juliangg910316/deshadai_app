import 'package:deshadai/data/mapper/salary_income_mapper.dart';

import '../../../domain/datasources/salary_income_datasource.dart';
import '../../../domain/entity/salary_income.dart';
import '../../../objectbox.dart';
import '../../../objectbox.g.dart';
import '../../model/salary_income_model.dart';

class SalaryIncomeDatasourceImpl implements SalaryIncomeDataSource {
  final ObjectBox _objectBox;

  SalaryIncomeDatasourceImpl(this._objectBox);

  @override
  Future<List<SalaryIncome>> getSalaryIncomes() {
    // Query for all notes, sorted by their date.
    // https://docs.objectbox.io/queries
    final builder = _objectBox.salaryIncomeBox.query().order(
      SalaryIncomeModel_.date,
      flags: Order.descending,
    );
    final salaryIncomeModels = builder.build().find();
    return Future.value(
      SalaryIncomeMapper.mapperSalaryIncomeModelToEntityList(
        salaryIncomeModels,
      ),
    );
  }

  @override
  Future<bool> addSalaryIncome(SalaryIncome salaryIncome) async {
    final result = await _objectBox.salaryIncomeBox.putAsync(
      SalaryIncomeModel(
        salaryIncome: salaryIncome.salaryIncome,
        comment: salaryIncome.comment,
        date: salaryIncome.date,
      ),
    );
    return result > 0;
  }

  @override
  Future<bool> updateSalaryIncome(SalaryIncome salaryIncome) async {
    if (salaryIncome.id == null) {
      return false;
    }
    final result = await _objectBox.salaryIncomeBox.putAsync(
      SalaryIncomeModel(
        id: salaryIncome.id!,
        salaryIncome: salaryIncome.salaryIncome,
        comment: salaryIncome.comment,
        date: salaryIncome.date,
      ),
    );
    return result > 0;
  }

  @override
  Future<bool> deleteSalaryIncome(int id) async =>
      await _objectBox.salaryIncomeBox.removeAsync(id);
}
