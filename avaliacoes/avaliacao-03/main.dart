import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  // Necessário para o passo 6: converte o objeto para um "Mapa" que o JSON entende
  Map<String, dynamic> toJson() => {'nome': _nome};
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  Map<String, dynamic> toJson() => {
    'nome': _nome,
    'dependentes': _dependentes
  };
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() => {
    'nomeProjeto': _nomeProjeto,
    'funcionarios': _funcionarios
  };
}

void main() {
  // 1. Criar objetos Dependentes
  var dep1 = Dependente("Enzo");
  var dep2 = Dependente("Valentina");

  // 2 e 3. Criar Funcionarios e Associar os Dependentes
  var f1 = Funcionario("Carlos Silva", [dep1, dep2]);
  var f2 = Funcionario("Maria Oliveira", []);

  // 4. Criar uma lista de Funcionarios
  List<Funcionario> time = [f1, f2];

  // 5. Criar o objeto Equipe Projeto
  var projeto = EquipeProjeto("Expansão 2024", time);

  // 6. Printar no formato JSON
  // O indent serve para deixar o texto "bonito" e legível
  String projetoJson = jsonEncode(projeto);
  print("--- Dados do Projeto em JSON ---");
  print(projetoJson);
}
