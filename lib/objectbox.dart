import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'data/model/salary_income_model.dart';
import 'objectbox.g.dart'; // created by `dart run build_runner build`

class ObjectBox {
  late final Box<SalaryIncomeModel> _salaryIncomeBox;

  Box<SalaryIncomeModel> get salaryIncomeBox => _salaryIncomeBox;

  ObjectBox._create(Store store) {
    _salaryIncomeBox = Box<SalaryIncomeModel>(store);

    if (_salaryIncomeBox.isEmpty()) {
      _putDemoData();
    }
  }

  static Future<ObjectBox> create() async {
    final store = await openStore(
      directory: p.join(
        (await getApplicationDocumentsDirectory()).path,
        "deshadai-db",
      ),
      macosApplicationGroup: "objectbox.deshadai",
    );
    return ObjectBox._create(store);
  }

  void _putDemoData() {
    final demoNotes = [
      SalaryIncomeModel(
        salaryIncome: 100,
        comment: 'First salary',
        date: DateTime(2025, 8, 21),
      ),
      SalaryIncomeModel(
        salaryIncome: 150,
        comment: 'Second salary',
        date: DateTime(2025, 8, 22),
      ),
      SalaryIncomeModel(
        salaryIncome: 200,
        comment: 'Third salary',
        date: DateTime.now(),
      ),
    ];
    _salaryIncomeBox.putManyAsync(demoNotes);
  }
}
