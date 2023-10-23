import 'package:imc/imc_service.dart';
import 'package:imc/pessoa_model.dart';
import 'package:test/test.dart';

void main() {
  test('calcularImc', () {
    expect(calcularImc(Pessoa(nome: "PessoaTeste", peso: 50, altura: 1.60)),
        "Imc de 19.53: Saudável");
  });
  test('calcularImc', () {
    expect(calcularImc(Pessoa(nome: "PessoaTeste", peso: 100, altura: 1.60)),
        "Imc de 39.06: Obesidade grau 2 (Severa)");
  });
}
