import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

final formatterCurrency = NumberFormat.currency(
  locale: 'pt_BR',
  symbol: '',
  decimalDigits: 2,
);

class CurrencyPtBrInputFormatter extends TextInputFormatter {
  CurrencyPtBrInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    // Remove tudo que não é dígito
    String newText = newValue.text.replaceAll(RegExp('[^0-9]'), '');
    // Formata como moeda brasileira

    String newFormatted = formatterCurrency.format(double.parse(newText) / 100);
    // Retorna o novo texto formatado com cursor na última posição
    return TextEditingValue(
      text: newFormatted,
      selection: TextSelection.collapsed(offset: newFormatted.length),
    );
  }
}
