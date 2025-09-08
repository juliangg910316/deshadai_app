import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'data/model/salary_income_model.dart';
import 'objectbox.g.dart'; // created by `dart run build_runner build`

class ObjectBox {
  late final Box<SalaryIncomeModel> _salaryIncomeBox;

  Box<SalaryIncomeModel> get salaryIncomeBox => _salaryIncomeBox;

  ObjectBox._create(Store store) {
    _salaryIncomeBox = Box<SalaryIncomeModel>(store);
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
}
