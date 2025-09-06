import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

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

    // Converte para double dividindo por 100 para obter valores decimais
    double value = double.parse(newText);

    // Formata como moeda brasileira
    final formatter = NumberFormat.simpleCurrency(
      locale: 'pt_BR',
      decimalDigits: 2,
    );
    String newFormatted = formatter.format(value / 100);

    // Retorna o novo texto formatado com cursor na última posição
    return TextEditingValue(
      text: newFormatted,
      selection: TextSelection.collapsed(offset: newFormatted.length),
    );
  }
}
