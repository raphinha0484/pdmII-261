import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

 
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
  
  var dep1 = Dependente("Enzo");
  var dep2 = Dependente("Valentina");

 
  var f1 = Funcionario("Carlos Silva", [dep1, dep2]);
  var f2 = Funcionario("Maria Oliveira", []);

  
  List<Funcionario> time = [f1, f2];

  
  var projeto = EquipeProjeto("Expansão 2024", time);

  
  String projetoJson = jsonEncode(projeto);
  print("--- Dados do Projeto em JSON ---");
  print(projetoJson);
}
