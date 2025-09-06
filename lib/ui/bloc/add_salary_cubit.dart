import 'package:deshadai/core/input/salary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

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
    Logger().d('salaryIncomeChanged: $value');
    // final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final amount = switch (value.length) {
      0 => '0.00',
      1 => '0.0${value.substring(0, 1)}',
      2 => '0.${value.substring(0, 2)}',
      _ =>
        '${value.substring(0, value.length - 2)}.${value.substring(value.length - 2, value.length)}',
    };
    // final v = formatter.format(double.parse(amount));
    Logger().d('formatted value: $amount');
    final salary = Salary.dirty(amount);
    emit(
      state.copyWith(
        salaryIncome: salary,
        controller: state.controller?..text = amount,
        isValid: salary.isValid && state.date != null,
      ),
    );
  }

  void dateChanged(DateTime? value) {
    emit(
      state.copyWith(
        date: value,
        isValid: value != null && state.salaryIncome.isValid,
      ),
    );
  }

  void submit() async {
    emit(state.copyWith(isLoading: true, isError: false, isSuccess: false));
    final salaryIncome = SalaryIncome(
      salaryIncome: double.parse(state.salaryIncome.value),
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
