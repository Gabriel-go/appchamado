import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var mascaraData = new MaskTextInputFormatter(
    mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

var mascaraHora =
    new MaskTextInputFormatter(mask: '##:##', filter: {"#": RegExp(r'[0-9]')});
