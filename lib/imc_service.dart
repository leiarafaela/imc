import 'package:imc/pessoa_model.dart';

String calcularImc(Pessoa pessoa) {
  var imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  String result = "";
  String imcFormatado = imc.toStringAsFixed(2);

  if (imc < 16) {
    result = "Imc de $imcFormatado: Magresa grave";
  } else if (imc >= 16 && imc < 17) {
    result = "Imc de $imcFormatado: Magresa moderada";
  } else if (imc >= 17 && imc < 18.5) {
    result = "Imc de $imcFormatado: Magresa leve";
  } else if (imc >= 18.5 && imc < 25) {
    result = "Imc de $imcFormatado: Saudável";
  } else if (imc >= 25 && imc < 30) {
    result = "Imc de $imcFormatado: Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    result = "Imc de $imcFormatado: Obesidade grau 1";
  } else if (imc >= 35 && imc < 40) {
    result = "Imc de $imcFormatado: Obesidade grau 2 (Severa)";
  } else {
    result = "Imc de $imcFormatado: Obesidade grau 3 (mórbida)";
  }

  return result;
}
