class Pessoa {
  const Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  final String nome;
  final double peso;
  final double altura;
}

Pessoa criarPessoa(String nome, double peso, double altura) {
  return Pessoa(nome: nome, peso: peso, altura: altura);
}
