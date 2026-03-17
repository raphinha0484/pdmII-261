class Pilha {
  List<int> itens = [];


  bool estaVazia() {
    return itens.isEmpty;
  }

 
  void empilhar(int item) {
    itens.add(item);
    print("$item foi empilhado.");
  }


  void desempilhar() {
    if (estaVazia()) {
      print("A pilha está vazia!");
    } else {
      int removido = itens.removeLast();
      print("$removido foi removido.");
    }
  }

  
  void topo() {
    if (estaVazia()) {
      print("A pilha está vazia!");
    } else {
      print("Topo da pilha: ${itens.last}");
    }
  }


  void mostrar() {
    if (estaVazia()) {
      print("A pilha está vazia!");
    } else {
      print("Elementos da pilha: $itens");
    }
  }
}

void main() {
  Pilha pilha = Pilha();

  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  pilha.mostrar();
  pilha.topo();

  pilha.desempilhar();
  pilha.mostrar();
}
