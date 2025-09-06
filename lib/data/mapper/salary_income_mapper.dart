import '../../domain/entity/salary_income.dart';
import '../model/salary_income_model.dart';

class SalaryIncomeMapper {
  static SalaryIncome mapperSalaryIncomeModelToEntity(
    SalaryIncomeModel model,
  ) => SalaryIncome(
    id: model.id,
    salaryIncome: model.salaryIncome,
    comment: model.comment,
    date: model.date,
  );

  static List<SalaryIncome> mapperSalaryIncomeModelToEntityList(
    List<SalaryIncomeModel> models,
  ) => models.map(mapperSalaryIncomeModelToEntity).toList();

  static SalaryIncomeModel mapperSalaryIncomeEntityToModel(
    SalaryIncome entity,
  ) => SalaryIncomeModel(
    id: entity.id ?? 0,
    salaryIncome: entity.salaryIncome,
    comment: entity.comment,
    date: entity.date,
  );
}
