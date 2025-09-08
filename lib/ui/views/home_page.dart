import 'package:deshadai/core/di/injection.dart';
import 'package:deshadai/core/extension/text_style.dart';
import 'package:deshadai/ui/bloc/add_salary_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/add_salary_form.dart';
import '../widgets/salary_list_view.dart';
import 'charts_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D\'Shadai')),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ChartsPage(),
            Text('Últimos dias trabalhados').bold(),
            SalaryListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => BlocProvider(
            create: (context) => getit<AddSalaryCubit>(),
            child: const AddSalaryForm(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
