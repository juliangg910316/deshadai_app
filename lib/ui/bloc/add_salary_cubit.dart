import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/input/salary.dart';
import '../../domain/datasources/salary_income_datasource.dart';
import '../../domain/entity/salary_income.dart';

part 'add_salary_cubit.freezed.dart';
part 'add_salary_state.dart';

class AddSalaryCubit extends Cubit<AddSalaryState> {
  final SalaryIncomeDataSource _salaryIncomeDataSource;
  AddSalaryCubit(this._salaryIncomeDataSource)
    : super(
        AddSalaryState(
          date: DateTime.now(),
          controller: TextEditingController(text: '0.00'),
        ),
      );

  void salaryIncomeChanged(String value) {
    final salary = Salary.dirty(value);
    emit(
      state.copyWith(
        salaryIncome: salary,
        controller: state.controller?..text = value,
        isValid: salary.isValid && state.date != null,
      ),
    );
  }

  void dateChanged(DateTime? value) => emit(
    state.copyWith(
      date: value,
      isValid: value != null && state.salaryIncome.isValid,
    ),
  );

  void submit() async {
    emit(state.copyWith(isLoading: true, isError: false, isSuccess: false));
    final salaryIncome = SalaryIncome(
      salaryIncome: double.parse(state.salaryIncome.cleanValue),
      comment: '',
      date: state.date!,
    );
    final response = await _salaryIncomeDataSource.addSalaryIncome(
      salaryIncome,
    );
    if (response) {
      emit(state.copyWith(isSuccess: true));
    } else {
      emit(state.copyWith(isError: true, errorMessage: 'Erro ao salvar'));
    }
  }
}
