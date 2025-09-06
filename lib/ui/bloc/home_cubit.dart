import 'package:deshadai/domain/datasources/salary_income_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/salary_income.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SalaryIncomeDataSource _salaryIncomeDataSource;
  HomeCubit(this._salaryIncomeDataSource) : super(const HomeState()) {
    _loadSalaryIncomes();
  }

  Future<void> _loadSalaryIncomes() async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final salaryIncomes = await _salaryIncomeDataSource.getSalaryIncomes();
      emit(
        state.copyWith(
          status: HomeStatus.success,
          salaryIncomes: salaryIncomes,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: HomeStatus.error, errorMessage: e.toString()),
      );
    }
  }
}
