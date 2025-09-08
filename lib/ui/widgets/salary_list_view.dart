import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/util/amount_formatter.dart';
import '../../domain/entity/salary_income.dart';
import '../bloc/home_cubit.dart';

class SalaryListView extends StatelessWidget {
  const SalaryListView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;
    switch (state.status) {
      case HomeStatus.initial:
      case HomeStatus.loading:
        return SizedBox(
          child: const Center(child: CircularProgressIndicator()),
        );
      case HomeStatus.error:
        return SizedBox(
          height: 300,
          child: Center(child: Text(state.errorMessage)),
        );
      case HomeStatus.success:
        return state.salaryIncomes.isEmpty
            ? SizedBox(
                height: 300,
                child: const Center(
                  child: Text('Não tem rendimentos salariais.'),
                ),
              )
            : _buildSalaryList(state.salaryIncomes);
    }
  }

  Widget _buildSalaryList(List<SalaryIncome> salaryIncomes) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: salaryIncomes.length,
      itemBuilder: (context, index) {
        final salaryIncome = salaryIncomes[index];
        return ListTile(
          title: Text(
            '\$${formatterCurrency.format(salaryIncome.salaryIncome)}',
          ),
          // subtitle: Text('Día ${salaryIncome.date.day}'),
          trailing: Text(DateFormat('dd MMM').format(salaryIncome.date)),
          // leading: const Icon(Icons.monetization_on),
        );
      },
    );
  }
}
