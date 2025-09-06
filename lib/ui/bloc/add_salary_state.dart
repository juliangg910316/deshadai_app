part of 'add_salary_cubit.dart';

@freezed
abstract class AddSalaryState with _$AddSalaryState {
  factory AddSalaryState({
    @Default(Salary.pure()) Salary salaryIncome,
    TextEditingController? controller,
    DateTime? date,
    @Default(false) bool isValid,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _AddSalaryState;
}
