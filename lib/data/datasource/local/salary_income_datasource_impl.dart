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
  Future<void> addSalaryIncome(SalaryIncome salaryIncome) =>
      _objectBox.salaryIncomeBox.putAsync(
        SalaryIncomeModel(
          salaryIncome: salaryIncome.salaryIncome,
          comment: salaryIncome.comment,
          date: salaryIncome.date,
        ),
      );

  @override
  Future<void> updateSalaryIncome(SalaryIncome salaryIncome) {
    // TODO: implement updateSalaryIncome
    throw UnimplementedError();
  }

  @override
  Future<void> deleteSalaryIncome(int id) {
    return _objectBox.salaryIncomeBox.removeAsync(id);
  }
}
