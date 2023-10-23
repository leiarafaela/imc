import 'package:imc/pessoa_model.dart';

double calcularImc(Pessoa pessoa) {
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}

String classificarImc(Pessoa pessoa) {
  double imc = calcularImc(pessoa);
  String imcFormatado = imc.toStringAsFixed(2);
  String result = "";
  print(imc);

  if (imc < 16) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Magresa grave";
  } else if (imc >= 16 && imc < 17) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Magresa moderada";
  } else if (imc >= 17 && imc < 18.5) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Magresa leve";
  } else if (imc >= 18.5 && imc < 25) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Saudável";
  } else if (imc >= 25 && imc < 30) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    result = "${pessoa.nome} possui IMC de $imcFormatado: Obesidade grau 1";
  } else if (imc >= 35 && imc < 40) {
    result =
        "${pessoa.nome} possui IMC de $imcFormatado: Obesidade grau 2 (Severa)";
  } else {
    result =
        "${pessoa.nome} possui IMC de $imcFormatado: Obesidade grau 3 (mórbida)";
  }

  return result;
}
