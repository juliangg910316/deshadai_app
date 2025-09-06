import 'package:formz/formz.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// Define Salary validation errors
enum SalaryError { empty, invalid }

final formatter = MaskTextInputFormatter(
  mask: '#########,##',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);

class Salary extends FormzInput<String, SalaryError> {
  const Salary.pure() : super.pure('');

  const Salary.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == SalaryError.empty) return 'O campo é obrigatório';

    return null;
  }

  String get cleanValue {
    return value.replaceAll(RegExp(r'[^\d]'), '');
  }

  // Override validator to handle validating a given Salary value.
  @override
  SalaryError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return SalaryError.empty;
    // if (!formatter.isFill()) return SalaryError.invalid;
    return null;
  }
}
