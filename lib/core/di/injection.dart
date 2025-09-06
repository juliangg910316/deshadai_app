// service locator
import 'package:deshadai/ui/bloc/add_salary_cubit.dart';
import 'package:deshadai/ui/bloc/home_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../data/datasource/local/salary_income_datasource_impl.dart';
import '../../domain/datasources/salary_income_datasource.dart';
import '../../objectbox.dart';

GetIt getit = GetIt.instance;

Future<void> init() async {
  // Register the ObjectBox instance
  final ObjectBox objectBox = await ObjectBox.create();
  getit
    ..registerSingleton<ObjectBox>(objectBox)
    // Register the SalaryIncomeDataSource
    ..registerFactory<SalaryIncomeDataSource>(
      () => SalaryIncomeDatasourceImpl(getit<ObjectBox>()),
    )
    ..registerFactory<AddSalaryCubit>(
      () => AddSalaryCubit(getit<SalaryIncomeDataSource>()),
    )
    ..registerFactory<HomeCubit>(
      () => HomeCubit(getit<SalaryIncomeDataSource>()),
    );
}
