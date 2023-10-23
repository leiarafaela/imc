import 'dart:convert';
import 'dart:io';

import 'package:imc/pessoa_model.dart';
import 'package:imc/imc.dart';

void main(List<String> arguments) {
  Pessoa pessoa;
  print("Calculadora IMC");

  print("Informe seu nome:");
  var nome = stdin.readLineSync(encoding: utf8);

  print("Informe quantos kilos você pesa:");
  var peso = stdin.readLineSync(encoding: utf8);

  print("Informe sua altura:");
  var altura = stdin.readLineSync(encoding: utf8);

  if (nome!.isEmpty || peso!.isEmpty || altura!.isEmpty) {
    print('É necessário informar os todos campos');
    return;
  } else {
    try {
      pessoa = criarPessoa(nome, double.parse(peso), double.parse(altura));
    } catch (e) {
      print('Erro: $e');
      return;
    }
  }
  print(pessoa);

  var resuldoImc = calcularImc(pessoa);

  print("${pessoa.nome}, você tem $resuldoImc");
}
