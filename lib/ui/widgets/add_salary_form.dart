import 'package:deshadai/core/extension/padding.dart';
import 'package:deshadai/core/extension/text_style.dart';
import 'package:deshadai/ui/bloc/add_salary_cubit.dart';
import 'package:deshadai/ui/bloc/home_cubit.dart';
import 'package:deshadai/ui/widgets/custom_button.dart';
import 'package:deshadai/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../../core/util/amount_formatter.dart';

class AddSalaryForm extends StatelessWidget {
  const AddSalaryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text('Adicionar Salário'),
      alignment: Alignment.center,
      content: Column(
        spacing: 24,
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<AddSalaryCubit, AddSalaryState>(
            buildWhen: (previous, current) =>
                previous.salaryIncome != current.salaryIncome,
            builder: (context, state) {
              return CustomTextFormField(
                label: 'Valor',
                controller: state.controller,
                // focusNode: FocusNode(),
                // autofocus: true,
                keyboardType: TextInputType.number,
                icon: Icons.attach_money,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CurrencyPtBrInputFormatter(),
                ],
                onChanged: context.read<AddSalaryCubit>().salaryIncomeChanged,
              );
            },
          ),
          BlocBuilder<AddSalaryCubit, AddSalaryState>(
            buildWhen: (previous, current) => previous.date != current.date,
            builder: (context, state) {
              Logger().d('state date: ${state.date}');
              final controller = TextEditingController(
                text: state.date != null
                    ? DateFormat('d MMMM').format(state.date!)
                    : '',
              );
              return CustomTextFormField(
                label: 'Fecha',
                controller: controller,
                readOnly: true,
                icon: Icons.calendar_today,
                onTap: () async {
                  final cubit = context.read<AddSalaryCubit>();
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(
                      const Duration(days: 30),
                    ),
                    lastDate: DateTime.now(),
                  );
                  cubit.dateChanged(pickedDate);
                },
              );
            },
          ),
        ],
      ).withPaddingSymmetric(vertical: 16),
      actions: [
        BlocConsumer<AddSalaryCubit, AddSalaryState>(
          listenWhen: (previous, current) =>
              previous.isSuccess != current.isSuccess ||
              previous.isError != current.isError,
          listener: (context, state) {
            if (state.isSuccess) {
              Navigator.of(context).pop();
              context.read<HomeCubit>().loadSalaryIncomes();
            } else if (state.isError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? 'Erro ao salvar'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return CustomButton(
              disableButton: !state.isValid,
              onSubmit: context.read<AddSalaryCubit>().submit,
              minWidth: 100,
              child: state.isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text('Salvar').color(Colors.white),
            );
          },
        ),
      ],
    );
  }
}
