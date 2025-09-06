part of 'home_cubit.dart';

enum HomeStatus { initial, loading, success, error }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default('') String errorMessage,
    @Default([]) List<SalaryIncome> salaryIncomes,
  }) = _HomeState;
}
